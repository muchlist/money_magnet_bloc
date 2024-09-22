import 'package:flutter/services.dart';
import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/features/user/repo/secure_credential_interface.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_local_repo.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_remote_repo.dart';
import 'package:money_magnet_bloc/src/features/user/entity/user.dart';

class UserService {
  final UserRemoteRepository _remoteRepository;
  final UserLocalRepository _localRepository;
  final ICredentialStorage _credentialsStorage;
  UserService(
      this._remoteRepository, this._localRepository, this._credentialsStorage);

  Future<Result<User>> signIn(String email, String password) async {
    try {
      final userResponse = await _remoteRepository.login(email, password);

      if (userResponse.hasError()) {
        return userResponse.convertError<User>();
      }

      final userData = userResponse.getData();
      try {
        Future.wait([
          _credentialsStorage.saveAccessToken(userData.accessToken),
          _credentialsStorage.saveRefreshToken(userData.refreshToken),
          _credentialsStorage
              .saveAccessTokenExpired(userData.accessTokenExpired),
          _credentialsStorage
              .saveRefreshTokenExpired(userData.refreshTokenExpired)
        ]);
      } catch (e) {
        return Result.withError(
            errorType: ErrorType.localDatabaseError,
            message: 'credential storage fail: ${e.toString()}');
      }

      try {
        await _localRepository.upsertUserDetail(userData.toDomain());
      } catch (e) {
        return Result.withError(
            errorType: ErrorType.localDatabaseError,
            message: 'credential storage fail: ${e.toString()}');
      }

      return Result.withData(data: userData.toDomain());
    } catch (e) {
      return Result.withError(
          errorType: ErrorType.unknownError, message: e.toString());
    }
  }

  Future<Result<String>> renewToken(String refreshToken) async {
    try {
      final userResponse = await _remoteRepository.refresh(refreshToken);
      if (userResponse.hasError()) {
        return userResponse.convertError<String>();
      }

      final data = userResponse.getData();
      try {
        Future.wait([
          _credentialsStorage.saveAccessToken(data.accessToken),
          _credentialsStorage.saveAccessTokenExpired(data.accessTokenExpired)
        ]);
      } catch (e) {
        return Result.withError(
            errorType: ErrorType.localDatabaseError,
            message: 'credential storage fail: ${e.toString()}');
      }

      return Result.withData(data: data.accessToken);
    } catch (e) {
      return Result.withError(
          errorType: ErrorType.unknownError, message: e.toString());
    }
  }

  Future<User?> getUserDetail() async {
    try {
      return await _localRepository.getUserDetail();
    } catch (e) {
      return null;
    }
  }

  Future<String?> getToken() async {
    try {
      final token = await _credentialsStorage.read();
      return token;
    } on PlatformException {
      return null;
    }
  }

  Future<String?> getRefreshToken() async {
    try {
      final token = await _credentialsStorage.readRefresh();
      return token;
    } on PlatformException {
      return null;
    }
  }

  Future<void> clearToken() async {
    try {
      await _credentialsStorage.clearAccessToken();
    } on PlatformException {
      return;
    }
  }

  Future<bool> isSignedIn() async {
    try {
      final token = await _credentialsStorage.read();
      if (token == null) {
        return false;
      }
      final expiredAt = await _credentialsStorage.readExpired();
      final nowEpoch = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      if (expiredAt != null && expiredAt >= nowEpoch) {
        return true;
      }
    } on PlatformException {
      return false;
    }
    return false;
  }

  Future<bool> isCanRefresh() async {
    try {
      final expiredAt = await _credentialsStorage.readRefreshExpired();
      if (expiredAt == null) {
        return false;
      }

      final nowEpoch = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      if (expiredAt < nowEpoch) {
        return true;
      }
    } on PlatformException {
      return false;
    }
    return false;
  }
}

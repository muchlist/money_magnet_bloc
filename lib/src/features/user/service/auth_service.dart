import 'package:flutter/services.dart';
import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/features/user/repo/secure_credential_interface.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_local_repo.dart';
import 'package:money_magnet_bloc/src/features/user/repo/auth_remote_repo.dart';
import 'package:money_magnet_bloc/src/features/user/entity/user.dart';

class AuthService {
  final AuthRemoteRepository _remoteRepository;
  final UserLocalRepository _localRepository;
  final ICredentialStorage _credentialsStorage;
  AuthService(
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
        await _localRepository.upsertUserDetail(userData.toEntity());
      } catch (e) {
        return Result.withError(
            errorType: ErrorType.localDatabaseError,
            message: 'credential storage fail: ${e.toString()}');
      }

      return Result.withData(data: userData.toEntity());
    } catch (e) {
      return Result.withError(
          errorType: ErrorType.unknownError, message: e.toString());
    }
  }

  Future<Result<String>> renewToken() async {
    try {
      final refreshToken = await getRefreshToken();
      if ((refreshToken == null) || (refreshToken.isEmpty)) {
        return Result.withError(
            errorType: ErrorType.authRefreshError,
            message: "refresh token is empty");
      }

      final canRefresh = await isCanRefresh();
      if (!canRefresh) {
        return Result.withError(
            errorType: ErrorType.authRefreshError,
            message: "refresh token is expired");
      }

      final userResponse = await _remoteRepository.refresh(refreshToken);
      if (userResponse.hasError()) {
        return userResponse.convertError<String>()
          ..wrapError(
            ErrorType.authRefreshError,
            "failed to refresh token",
          );
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

  Future<User?> getAuthDetail() async {
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

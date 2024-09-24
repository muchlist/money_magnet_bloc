import 'package:dio/dio.dart';
import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/dio_client_basic.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/dio_extentions.dart';
import 'package:money_magnet_bloc/src/config/remote_service.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_dto.dart';

class AuthRemoteRepository {
  final DioBasicClient _dio;

  AuthRemoteRepository(this._dio);

  Future<Result<LoginDTO>> login(String email, String password) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/user/login',
    );

    try {
      final response = await _dio.dio.postUri(
        requestUri,
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = LoginResponseDTO.fromJson(response.data);
        return Result.withData(data: data.data);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from user
        try {
          final data = LoginResponseDTO.fromJson(response.data);
          return Result.withError(
            message: data.error ?? "",
            errorType: ErrorType.requestError,
          );
        } catch (e) {
          rethrow;
        }
      } else {
        // Server error
        return Result.withError(
          message: "service response code ${response.statusCode}",
          errorType: ErrorType.apiError,
        );
      }
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return Result.withError(
          message: "no connection",
          errorType: ErrorType.networkError,
        );
      } else if (e.response != null) {
        // Errornya kena disini jika di dio tidak di setting status code yang dianggap berhasil
        return Result.withError(
          message:
              "service response code ${e.response?.statusCode}: ${e.message}",
          errorType: ErrorType.unknownError,
        );
      } else {
        Result.withError(
          message: "unknown error: ${e.toString()}",
          errorType: ErrorType.unknownError,
        );
      }
    } on FormatException catch (e) {
      return Result.withError(
        message: "error formating response: ${e.toString()}",
        errorType: ErrorType.formatError,
      );
    } catch (e) {
      Result.withError(
        message: "unknown error: ${e.toString()}",
        errorType: ErrorType.unknownError,
      );
    }

    return Result.withError(
      message: "unknown error",
      errorType: ErrorType.unknownError,
    );
  }

  Future<Result<RefreshDTO>> refresh(String refreshToken) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/user/refresh',
    );

    try {
      final response = await _dio.dio.postUri(
        requestUri,
        data: {'refresh_token': refreshToken},
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = RefreshResponseDTO.fromJson(response.data);
        return Result.withData(data: data.data);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from user
        try {
          final data = RefreshResponseDTO.fromJson(response.data);
          return Result.withError(
            message: data.error ?? "",
            errorType: ErrorType.requestError,
          );
        } catch (e) {
          rethrow;
        }
      } else {
        // Server error
        return Result.withError(
          message: "service response code ${response.statusCode}",
          errorType: ErrorType.apiError,
        );
      }
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return Result.withError(
          message: "no connection",
          errorType: ErrorType.networkError,
        );
      } else if (e.response != null) {
        return Result.withError(
          message:
              "service response code ${e.response?.statusCode}: ${e.message}",
          errorType: ErrorType.unknownError,
        );
      } else {
        Result.withError(
          message: "unknown error: ${e.toString()}",
          errorType: ErrorType.unknownError,
        );
      }
    } on FormatException catch (e) {
      return Result.withError(
        message: "error formating response: ${e.toString()}",
        errorType: ErrorType.formatError,
      );
    } catch (e) {
      Result.withError(
        message: "unknown error: ${e.toString()}",
        errorType: ErrorType.unknownError,
      );
    }

    return Result.withError(
      message: "unknown error",
      errorType: ErrorType.unknownError,
    );
  }
}

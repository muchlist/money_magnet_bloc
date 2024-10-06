import 'package:money_magnet_bloc/src/common/data/api_error_handler.dart';
import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/dio_client_basic.dart';
import 'package:money_magnet_bloc/src/config/config.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_dto.dart';

class AuthRemoteRepository {
  final DioBasicClient _dio;

  AuthRemoteRepository(this._dio);

  Future<Result<LoginDTO>> login(String email, String password) async {
    final requestUri = Uri.https(
      EnvConfig.baseURL,
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
        final data = LoginResponseDTO.fromJson(response.data);
        return Result.withError(
          message: data.error ?? "",
          errorType: ErrorType.requestError,
        );
      } else {
        // Server error
        return Result.withError(
          message: "service response code ${response.statusCode}",
          errorType: ErrorType.apiError,
        );
      }
    } catch (error) {
      return handleError(error);
    }
  }

  Future<Result<RefreshDTO>> refresh(String refreshToken) async {
    final requestUri = Uri.https(
      EnvConfig.baseURL,
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
        final data = RefreshResponseDTO.fromJson(response.data);
        return Result.withError(
          message: data.error ?? "",
          errorType: ErrorType.requestError,
        );
      } else {
        // Server error
        return Result.withError(
          message: "service response code ${response.statusCode}",
          errorType: ErrorType.apiError,
        );
      }
    } catch (error) {
      return handleError(error);
    }
  }
}

import 'package:dio/dio.dart';
import 'package:money_magnet_bloc/src/features/user/service/auth_service.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

class DioClient {
  final Dio _dio = Dio();
  final AuthService authService;
  bool isRefreshingToken = false;
  bool refreshTokenFailed = false;
  final Function? onLogoutCallback; // Callback untuk logout

  DioClient(this.authService, {this.onLogoutCallback}) {
    _dio
      ..options = BaseOptions(
        validateStatus: (status) => status != null && status < 501,
        responseType: ResponseType.json,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
      )
      ..interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printResponseMessage: true,
          ),
        ),
      )
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            // Check if the request should skip the refresh token logic
            if (options.extra['refreshTokenExempt'] != true &&
                !refreshTokenFailed) {
              final accessToken = await authService.getToken();
              if (accessToken != null) {
                options.headers['Authorization'] = 'Bearer $accessToken';
              }
            }
            return handler.next(options);
          },
          onError: (DioException err, ErrorInterceptorHandler handler) async {
            if (err.response != null &&
                err.response?.statusCode == 401 &&
                !refreshTokenFailed) {
              if (!isRefreshingToken) {
                isRefreshingToken = true;

                String? newAccessToken;
                try {
                  // Trigger refresh token request
                  final renewResult = await authService.renewToken();
                  if (renewResult.hasError()) {
                    refreshTokenFailed = true; // Mark failure

                    // Optionally handle failed refresh token, such as logging out user
                    // or force user to logout like await authService.logout();
                    if (onLogoutCallback != null) {
                      onLogoutCallback!(); // Triggering the logout
                    }

                    return handler.reject(err); // Reject if refresh fails
                  }

                  // new refresh token obtained
                  newAccessToken = renewResult.data;
                  // reset failure flag if successful
                  refreshTokenFailed = false;
                } catch (e) {
                  refreshTokenFailed = true; // Mark failure
                  handler.reject(err); // Reject request if token refresh fails
                  return;
                } finally {
                  isRefreshingToken = false;
                }

                if (newAccessToken != null) {
                  // Update the failed request with new access token
                  err.requestOptions.headers['Authorization'] =
                      'Bearer $newAccessToken';

                  // Retry the request with the new access token
                  try {
                    final cloneReq = await _dio.request(
                      err.requestOptions.path,
                      options: Options(
                        method: err.requestOptions.method,
                        headers: err.requestOptions.headers,
                      ),
                      data: err.requestOptions.data,
                      queryParameters: err.requestOptions.queryParameters,
                    );
                    return handler.resolve(cloneReq);
                  } catch (retryError) {
                    if (retryError is DioException) {
                      return handler
                          .reject(retryError); // Reject if retry fails
                    }
                    return handler.reject(DioException(
                      requestOptions: err.requestOptions,
                      error: retryError.toString(),
                    ));
                  }
                }
              }
            }
            return handler.next(err); // Forward the error if it is not 401
          },
        ),
      );
  }

  Dio get dio => _dio;
}

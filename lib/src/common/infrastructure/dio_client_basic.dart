import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

// DioBasicClient used by UserService for doing basic request without
// inject access token and automatic renewal token
class DioBasicClient {
  final Dio _basicDio = Dio();

  DioBasicClient() {
    _basicDio
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
      );
  }

  Dio get dio => _basicDio;
}

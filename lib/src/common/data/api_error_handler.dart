import 'package:dio/dio.dart';
import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/dio_extentions.dart';

Result<T> handleError<T>(Object error) {
  if (error is DioException) {
    if (error.isNoConnectionError) {
      return Result.withError(
        message: "no connection",
        errorType: ErrorType.networkError,
      );
    } else if (error.response != null) {
      return Result.withError(
        message:
            "service response code ${error.response?.statusCode}: ${error.message}",
        errorType: ErrorType.unknownError,
      );
    } else {
      return Result.withError(
        message: "unknown dio error: ${error.toString()}",
        errorType: ErrorType.unknownError,
      );
    }
  } else if (error is FormatException) {
    return Result.withError(
      message: "error formatting response: ${error.toString()}",
      errorType: ErrorType.formatError,
    );
  } else {
    return Result.withError(
      message: "unknown error: ${error.toString()}",
      errorType: ErrorType.unknownError,
    );
  }
}

import 'package:money_magnet_bloc/src/common/data/result_error_type.dart';

/// A generic class to encapsulate both success and error outcomes,
/// with support for error wrapping and type checking.
///
/// The `Result<T>` class simplifies error handling by combining both
/// success data and error information in one unified structure. It supports
/// wrapping multiple errors and checking specific error types, similar to
/// Go's error handling.
///
/// ### Key Features
/// - Wraps multiple errors with a chain of error messages.
/// - Supports checking if a specific error type exists using `isErrorType`.
/// - Easily handles success or error cases with `getData` and `hasError`.
///
/// ### Usage Example
/// ```dart
/// void main() {
///   // Example 1: Successful result
///   var successResult = Result<String>.withData(
///     data: "Success data",
///   );
///
///   if (!successResult.hasError()) {
///     print(successResult.getData());  // Output: Success data
///   }
///
///   // Example 2: Error result with error wrapping
///   var errorResult = Result<String>.withError(
///     errorType: ErrorType.apiError,
///     message: "API request failed",
///   );
///
///   errorResult = errorResult.wrapError(
///     ErrorType.networkError,
///     "Network connection lost",
///   );
///
///   if (errorResult.hasError()) {
///     print(errorResult.message);
///     // Output: Network connection lost -> API request failed
///
///     // Checking if a specific error type exists
///     if (errorResult.isErrorType(ErrorType.networkError)) {
///       print("A network error occurred.");
///     }
///   }
/// }
/// ```
///
/// ### Methods
/// - `hasError()` - Checks if the result contains an error.
/// - `getData()` - Retrieves the success data. Throws if data is `null`.
/// - `wrapError(ErrorType, String)` - Wraps a new error type and message around the existing error.
/// - `isErrorType(ErrorType)` - Checks if the specified error type exists in the error chain.
/// - `convertError<U>()` - Converts the current error to a `Result<U>` while ignoring the data.
///
/// ### Error Wrapping
/// Errors can be wrapped using the `wrapError` method, which adds new error types and prepends messages,
/// allowing error tracing similar to Go’s `errors.Is`. The `isErrorType` method checks if a specific error type
/// exists within the error chain.
class Result<T> {
  final String message;
  final List<ErrorType>? errorTypes;
  final T? data;
  final Map<String, dynamic>? meta;

  Result({
    this.message = "",
    this.errorTypes,
    this.data,
    this.meta,
  }) : assert(
            (data != null && errorTypes == null) ||
                (data == null && errorTypes != null),
            "either data or errorTypes must be provided, but not both.") {
    if ((data == null && errorTypes == null) ||
        (data != null && errorTypes != null)) {
      throw ArgumentError(
          "either data or errorTypes must be provided, but not both.");
    }
  }

  /// Named constructor to create a `Result` with only data.
  ///
  /// - [data] is required.
  /// - [message] is optional (default: "Success").
  Result.withData({
    required this.data,
    this.message = "Success",
    this.meta,
  }) : errorTypes = null;

  /// Named constructor to create a `Result` with only an error.
  ///
  /// - [errorTypes] and [message] are required.
  Result.withError({
    required ErrorType errorType,
    required this.message,
  })  : errorTypes = [errorType],
        data = null,
        meta = null;

  bool hasError() => errorTypes != null && errorTypes!.isNotEmpty;

  /// Check if a specific error type exists, similar to `errors.Is` in Go.
  bool isErrorType(ErrorType type) {
    if (errorTypes == null) return false;
    return errorTypes!.contains(type);
  }

  /// Adds another error type and wraps the current message with a new one.
  Result<T> wrapError(ErrorType newErrorType, String newMessage) {
    List<ErrorType> updatedErrorTypes = List.from(errorTypes ?? []);
    updatedErrorTypes.add(newErrorType);

    String updatedMessage = '$newMessage : $message';

    return Result<T>(
      errorTypes: updatedErrorTypes,
      message: updatedMessage,
    );
  }

  T getData() {
    if (data == null) {
      return _getDefaultValueForType();
    }
    return data!;
  }

  Map<String, dynamic> getMetaData() {
    if (meta == null) {
      return {};
    }
    return meta!;
  }

  /// Convert the error of this Result<T> to Result<U> while ignoring data.
  Result<U> convertError<U>() {
    return Result<U>(
      errorTypes: errorTypes,
      message: message,
    );
  }

  T _getDefaultValueForType() {
    if (T is List) {
      return [] as T;
    } else if (T is Map) {
      return {} as T;
    } else {
      throw Exception("Data is null but expected non-nullable data");
    }
  }

  @override
  String toString() {
    return 'Result{hasError: ${hasError()}, message: $message, errorTypes: $errorTypes, data: $data}';
  }
}

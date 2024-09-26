import 'package:logger/logger.dart';

class AppLogger {
  AppLogger._privateConstructor();
  static final AppLogger _instance = AppLogger._privateConstructor();
  factory AppLogger() {
    return _instance;
  }

  final Logger _logger = Logger(
    level: Level.all,
    // printer: PrettyPrinter(),
  );

  void i(String message) {
    _logger.i(message);
  }

  void d(String message) {
    _logger.d(message);
  }

  void e(String message) {
    _logger.e(message);
  }
}

import 'package:flutter_dotenv/flutter_dotenv.dart';

// class EnvConfig {
//   EnvConfig._internal() {
//     // Load the dotenv file only once
//     dotenv.load().then((_) {
//       baseURL = dotenv.env['BASE_URL'] ?? "";
//     });
//   }

//   static final EnvConfig _instance = EnvConfig._internal();
//   factory EnvConfig() {
//     return _instance;
//   }

//   String baseURL = "";
// }

class EnvConfig {
  static String baseURL = "";

  static Future<void> load() async {
    await dotenv.load();
    baseURL = dotenv.env['BASE_URL'] ?? "";
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/sembast.dart';
import 'package:money_magnet_bloc/src/features/user/repo/secure_credential_storage.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_local_repo.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_remote_repo.dart';
import 'package:money_magnet_bloc/src/features/user/service/user_service.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Register Dio
  getIt.registerSingleton<Dio>(
    Dio()
      ..options = BaseOptions(
        validateStatus: (status) => true,
        responseType: ResponseType.json,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      )
      ..interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printResponseMessage: true,
          ),
        ),
      ),
  );

  // Register Secure Storage
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  // Register Sembast Database (async initialization)
  final sembast = SembastDatabase();
  await sembast.init(); // Ensure Sembast is initialized before use
  getIt.registerSingleton<SembastDatabase>(sembast);

  // Register Repositories
  getIt.registerSingleton<UserRemoteRepository>(
    UserRemoteRepository(getIt<Dio>()),
  );
  getIt.registerSingleton<UserLocalRepository>(
    UserLocalRepository(getIt<SembastDatabase>()),
  );
  getIt.registerSingleton<SecureCredentialStorage>(
    SecureCredentialStorage(getIt<FlutterSecureStorage>()),
  );

  // Register UserService
  getIt.registerSingleton<UserService>(
    UserService(
      getIt<UserRemoteRepository>(),
      getIt<UserLocalRepository>(),
      getIt<SecureCredentialStorage>(),
    ),
  );
}

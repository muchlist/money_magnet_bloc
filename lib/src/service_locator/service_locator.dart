import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/dio_client_basic.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/dio_client_with_interceptor.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/sembast.dart';
import 'package:money_magnet_bloc/src/features/user/repo/secure_credential_storage.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_local_repo.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_remote_repo.dart';
import 'package:money_magnet_bloc/src/features/user/service/user_service.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Register Dio for UserService (simple Dio without complex interceptors)
  getIt.registerSingleton<DioBasicClient>(DioBasicClient());

  // Register Secure Storage
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  // Register Sembast Database (async initialization)
  final sembast = SembastDatabase();
  await sembast.init(); // Ensure Sembast is initialized before use
  getIt.registerSingleton<SembastDatabase>(sembast);

  // Register Repositories (UserService uses the simple Dio instance)
  getIt.registerSingleton<UserRemoteRepository>(
    UserRemoteRepository(getIt<DioBasicClient>()), // The simple Dio
  );
  getIt.registerSingleton<UserLocalRepository>(
    UserLocalRepository(getIt<SembastDatabase>()),
  );
  getIt.registerSingleton<SecureCredentialStorage>(
    SecureCredentialStorage(getIt<FlutterSecureStorage>()),
  );

  // Register UserService (using simple Dio)
  getIt.registerSingleton<UserService>(
    UserService(
      getIt<UserRemoteRepository>(),
      getIt<UserLocalRepository>(),
      getIt<SecureCredentialStorage>(),
    ),
  );

  // Register DioClient for other services after UserService is ready
  getIt.registerSingleton<Dio>(
    DioClient(
      getIt<UserService>(), // if needed for other services
      onLogoutCallback: () {
        // TODO Add logout logic
      },
    ).dio,
  );
}

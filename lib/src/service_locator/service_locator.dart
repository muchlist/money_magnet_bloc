import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/dio_client_basic.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/dio_client_with_interceptor.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/sembast.dart';
import 'package:money_magnet_bloc/src/features/app_state/cubit/global/global_cubit.dart';
import 'package:money_magnet_bloc/src/features/pocket/repo/pocket_remote_interface.dart';
import 'package:money_magnet_bloc/src/features/pocket/repo/pocket_remote_repo.dart';
import 'package:money_magnet_bloc/src/features/pocket/service/pocket_service.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_remote_interface.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_remote_repo.dart';
import 'package:money_magnet_bloc/src/features/spend/service/spend_service.dart';
import 'package:money_magnet_bloc/src/features/user/repo/config_local_repo.dart';
import 'package:money_magnet_bloc/src/features/user/repo/secure_credential_storage.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_local_repo.dart';
import 'package:money_magnet_bloc/src/features/user/repo/auth_remote_repo.dart';
import 'package:money_magnet_bloc/src/features/user/service/auth_service.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Register GlobalCubit
  getIt.registerSingleton<GlobalCubit>(GlobalCubit());

  // Register Dio for AuthService (simple Dio without complex interceptors)
  getIt.registerSingleton<DioBasicClient>(DioBasicClient());

  // Register Secure Storage
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  // Register Sembast Database (async initialization)
  final sembast = SembastDatabase();
  await sembast.init(); // Ensure Sembast is initialized before use
  getIt.registerSingleton<SembastDatabase>(sembast);

  // Register Repositories (AuthService uses the simple Dio instance)
  getIt.registerSingleton<AuthRemoteRepository>(
    AuthRemoteRepository(getIt<DioBasicClient>()), // The simple Dio
  );
  getIt.registerSingleton<UserLocalRepository>(
    UserLocalRepository(getIt<SembastDatabase>()),
  );
  getIt.registerSingleton<SecureCredentialStorage>(
    SecureCredentialStorage(getIt<FlutterSecureStorage>()),
  );

  // Register AuthService (using simple Dio)
  getIt.registerSingleton<AuthService>(
    AuthService(
      getIt<AuthRemoteRepository>(),
      getIt<UserLocalRepository>(),
      getIt<SecureCredentialStorage>(),
    ),
  );

  // Register DioClient for other services after AuthService is ready
  getIt.registerSingleton<Dio>(
    DioClient(
      getIt<AuthService>(),
      // triggers the force logout in app state
      onLogoutCallback: () {
        getIt<GlobalCubit>().forceLogout();
      },
    ).dio,
  );

  // Register LocalConfig
  getIt.registerSingleton<ConfigLocalRepository>(
      ConfigLocalRepository(getIt<SembastDatabase>()));

  // Register Pocket Bloc dependency
  getIt.registerSingleton<IPocketRemoteRepository>(
    // use interface IPocketRemoteRepository just for example when the apps really need unit test
    PocketRemoteRepository(getIt<Dio>()),
  );

  getIt.registerSingleton<PocketService>(
    PocketService(
      getIt<IPocketRemoteRepository>(),
      getIt<ConfigLocalRepository>(),
    ),
  );

  // Register Spend Bloc dependency
  getIt.registerSingleton<ISpendRemoteRepository>(
    SpendRemoteRepository(getIt<Dio>()),
  );

  getIt.registerSingleton<SpendService>(
    SpendService(getIt<ISpendRemoteRepository>()),
  );
}

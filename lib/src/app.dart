import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:money_magnet_bloc/src/common/infrastructure/sembast.dart';
import 'package:money_magnet_bloc/src/common/theme/theme.dart';
import 'package:money_magnet_bloc/src/features/user/bloc/user/user_bloc.dart';
import 'package:money_magnet_bloc/src/features/user/repo/secure_credential_storage.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_local_repo.dart';
import 'package:money_magnet_bloc/src/features/user/repo/user_remote_repo.dart';
import 'package:money_magnet_bloc/src/features/user/service/user_service.dart';
import 'package:money_magnet_bloc/src/routes/app_router.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // example dependecy
    const secureStorage = FlutterSecureStorage();
    final dioInstance = Dio()
      ..options = BaseOptions(
        validateStatus: (status) => true,
        responseType: ResponseType.json,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      )
      // ..interceptors.add(ref.read(authInterceptorProvider))
      ..interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printResponseMessage: true,
          ),
        ),
      );
    final sembast = SembastDatabase()..init();

    final UserRemoteRepository userRemoteRepo =
        UserRemoteRepository(dioInstance);
    final UserLocalRepository userLocalRepo = UserLocalRepository(sembast);
    final SecureCredentialStorage userCredRepo =
        SecureCredentialStorage(secureStorage);

    final UserService userService =
        UserService(userRemoteRepo, userLocalRepo, userCredRepo);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserBloc(userService)),
      ],
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Money Magnet',
      theme: setupThemeData(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}

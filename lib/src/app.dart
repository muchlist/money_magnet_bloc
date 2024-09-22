import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_magnet_bloc/src/common/theme/theme.dart';
import 'package:money_magnet_bloc/src/features/user/bloc/user/user_bloc.dart';
import 'package:money_magnet_bloc/src/features/user/service/user_service.dart';
import 'package:money_magnet_bloc/src/service_locator/service_locator.dart';
import 'package:money_magnet_bloc/src/routes/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Access dependecy from get_it
    final userService = getIt<UserService>();

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

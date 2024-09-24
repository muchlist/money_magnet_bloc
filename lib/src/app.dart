import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_magnet_bloc/src/common/theme/theme.dart';
import 'package:money_magnet_bloc/src/features/app_state/cubit/global/global_cubit.dart';
import 'package:money_magnet_bloc/src/features/user/bloc/auth/auth_bloc.dart';
import 'package:money_magnet_bloc/src/features/user/service/auth_service.dart';
import 'package:money_magnet_bloc/src/routes/app_router.gr.dart';
import 'package:money_magnet_bloc/src/service_locator/service_locator.dart';
import 'package:money_magnet_bloc/src/routes/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Access dependecy from get_it
    final globalCubit = getIt<GlobalCubit>();
    final userService = getIt<AuthService>();

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: globalCubit),
        BlocProvider(create: (context) => AuthBloc(userService)),
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
    return BlocListener<GlobalCubit, GlobalState>(
      listener: (context, state) {
        state.maybeWhen(
            forceLogout: () {
              appRouter.pushAndPopUntil(
                const LoginRoute(),
                predicate: (route) => false,
              );
            },
            orElse: () {});
      },
      child: MaterialApp.router(
        title: 'Money Magnet',
        theme: setupThemeData(),
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

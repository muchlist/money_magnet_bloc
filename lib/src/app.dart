import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_magnet_bloc/src/common/theme/theme.dart';
import 'package:money_magnet_bloc/src/features/app_state/cubit/global/global_cubit.dart';
import 'package:money_magnet_bloc/src/features/home/bloc/home_pocket_detail/home_pocket_detail_cubit.dart';
import 'package:money_magnet_bloc/src/features/pocket/bloc/pocket_detail/pocket_detail_cubit.dart';
import 'package:money_magnet_bloc/src/features/pocket/bloc/pocket_list/pocket_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/pocket/service/pocket_service.dart';
import 'package:money_magnet_bloc/src/features/spend/bloc/spend_list/spend_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/spend/service/spend_service.dart';
import 'package:money_magnet_bloc/src/features/user/bloc/auth/auth_bloc.dart';
import 'package:money_magnet_bloc/src/features/user/service/auth_service.dart';
import 'package:money_magnet_bloc/src/routes/app_router.gr.dart';
import 'package:money_magnet_bloc/src/service_locator/service_locator.dart';
import 'package:money_magnet_bloc/src/routes/app_router.dart';

class App extends StatelessWidget {
  App({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    // Access dependecy from get_it
    final globalCubit = getIt<GlobalCubit>();
    final userService = getIt<AuthService>();
    final pocketService = getIt<PocketService>();
    final spendService = getIt<SpendService>();

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: globalCubit),
        BlocProvider(create: (context) => AuthBloc(userService)),
        BlocProvider(create: (context) => HomePocketDetailCubit(pocketService)),
        BlocProvider(create: (context) => PocketListBloc(pocketService)),
        BlocProvider(create: (context) => SpendListBloc(spendService)),

        // ** bloc provider in specific screen
        // ** so spend_list_bloc home and spend_list_bloc per pocket has diferent state
        // SpendListBloc(spendService)), -- features/pocket/presentation/page/pocket_detail_page.dart
      ],
      child: AppView(
        appRouter: appRouter,
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key, required this.appRouter});
  final AppRouter appRouter;

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

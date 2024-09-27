import 'package:auto_route/auto_route.dart';
import 'package:money_magnet_bloc/src/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(
        //   page: SplashRoute.page,
        //   path: '/splash',
        // ),
        CustomRoute(
          page: LoginRoute.page,
          path: '/login',
          transitionsBuilder: TransitionsBuilders.slideBottom,
          durationInMilliseconds: 400,
          // initial: true,
        ),
        // AutoRoute(
        //   page: LoginRoute.page,
        //   path: '/login',
        //   initial: true,
        // ),
        AutoRoute(
          page: NavigationRoute.page,
          path: '/navigation',
          initial: true,
        ),
        // AutoRoute(
        //   page: PocketRoute.page,
        //   path: '/pocket',
        // ),
        AutoRoute(
          page: PocketAddRoute.page,
          path: '/pocket-add',
        ),
        // AutoRoute(
        //   page: SpendAddRoute.page,
        //   path: '/spend-add',
        // ),
      ];
}

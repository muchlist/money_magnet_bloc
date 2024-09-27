// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:money_magnet_bloc/src/features/home/presentation/navigation_page.dart'
    as _i2;
import 'package:money_magnet_bloc/src/features/pocket/presentation/page/pocket_add_page.dart'
    as _i3;
import 'package:money_magnet_bloc/src/features/user/presentation/login_page.dart'
    as _i1;

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginPage();
    },
  );
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i4.PageRouteInfo<void> {
  const NavigationRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.NavigationPage();
    },
  );
}

/// generated route for
/// [_i3.PocketAddPage]
class PocketAddRoute extends _i4.PageRouteInfo<void> {
  const PocketAddRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PocketAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'PocketAddRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.PocketAddPage();
    },
  );
}

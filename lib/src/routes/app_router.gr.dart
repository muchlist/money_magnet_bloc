// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i7;
import 'package:money_magnet_bloc/src/features/home/presentation/navigation_page.dart'
    as _i2;
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart'
    as _i6;
import 'package:money_magnet_bloc/src/features/pocket/presentation/page/pocket_add_page.dart'
    as _i3;
import 'package:money_magnet_bloc/src/features/pocket/presentation/page/pocket_detail_page.dart'
    as _i4;
import 'package:money_magnet_bloc/src/features/user/presentation/login_page.dart'
    as _i1;

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginPage();
    },
  );
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i5.PageRouteInfo<void> {
  const NavigationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.NavigationPage();
    },
  );
}

/// generated route for
/// [_i3.PocketAddPage]
class PocketAddRoute extends _i5.PageRouteInfo<void> {
  const PocketAddRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PocketAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'PocketAddRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.PocketAddPage();
    },
  );
}

/// generated route for
/// [_i4.PocketDetailPage]
class PocketDetailRoute extends _i5.PageRouteInfo<PocketDetailRouteArgs> {
  PocketDetailRoute({
    required _i6.Pocket pocketDetail,
    _i7.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          PocketDetailRoute.name,
          args: PocketDetailRouteArgs(
            pocketDetail: pocketDetail,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PocketDetailRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PocketDetailRouteArgs>();
      return _i4.PocketDetailPage(
        args.pocketDetail,
        key: args.key,
      );
    },
  );
}

class PocketDetailRouteArgs {
  const PocketDetailRouteArgs({
    required this.pocketDetail,
    this.key,
  });

  final _i6.Pocket pocketDetail;

  final _i7.Key? key;

  @override
  String toString() {
    return 'PocketDetailRouteArgs{pocketDetail: $pocketDetail, key: $key}';
  }
}

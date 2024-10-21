// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i8;
import 'package:money_magnet_bloc/src/features/home/presentation/navigation_page.dart'
    as _i2;
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart'
    as _i7;
import 'package:money_magnet_bloc/src/features/pocket/presentation/page/pocket_add_page.dart'
    as _i3;
import 'package:money_magnet_bloc/src/features/pocket/presentation/page/pocket_detail_page.dart'
    as _i4;
import 'package:money_magnet_bloc/src/features/spend/bloc/export.dart' as _i9;
import 'package:money_magnet_bloc/src/features/spend/presentation/page/spend_add_page.dart'
    as _i5;
import 'package:money_magnet_bloc/src/features/user/presentation/login_page.dart'
    as _i1;

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginPage();
    },
  );
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i6.PageRouteInfo<void> {
  const NavigationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.NavigationPage();
    },
  );
}

/// generated route for
/// [_i3.PocketAddPage]
class PocketAddRoute extends _i6.PageRouteInfo<void> {
  const PocketAddRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PocketAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'PocketAddRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.PocketAddPage();
    },
  );
}

/// generated route for
/// [_i4.PocketDetailPage]
class PocketDetailRoute extends _i6.PageRouteInfo<PocketDetailRouteArgs> {
  PocketDetailRoute({
    required _i7.Pocket pocketDetail,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          PocketDetailRoute.name,
          args: PocketDetailRouteArgs(
            pocketDetail: pocketDetail,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PocketDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
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

  final _i7.Pocket pocketDetail;

  final _i8.Key? key;

  @override
  String toString() {
    return 'PocketDetailRouteArgs{pocketDetail: $pocketDetail, key: $key}';
  }
}

/// generated route for
/// [_i5.SpendAddPage]
class SpendAddRoute extends _i6.PageRouteInfo<SpendAddRouteArgs> {
  SpendAddRoute({
    _i8.Key? key,
    required _i9.SpendListBloc bloc,
    required String pocketID,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SpendAddRoute.name,
          args: SpendAddRouteArgs(
            key: key,
            bloc: bloc,
            pocketID: pocketID,
          ),
          initialChildren: children,
        );

  static const String name = 'SpendAddRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SpendAddRouteArgs>();
      return _i5.SpendAddPage(
        key: args.key,
        bloc: args.bloc,
        pocketID: args.pocketID,
      );
    },
  );
}

class SpendAddRouteArgs {
  const SpendAddRouteArgs({
    this.key,
    required this.bloc,
    required this.pocketID,
  });

  final _i8.Key? key;

  final _i9.SpendListBloc bloc;

  final String pocketID;

  @override
  String toString() {
    return 'SpendAddRouteArgs{key: $key, bloc: $bloc, pocketID: $pocketID}';
  }
}

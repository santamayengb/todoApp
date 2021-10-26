// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomePage());
    },
    HomeListRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeListPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(MyHomeRoute.name, path: '/'),
        _i2.RouteConfig(HomeListRoute.name, path: '/home-list-page')
      ];
}

/// generated route for [_i1.MyHomePage]
class MyHomeRoute extends _i2.PageRouteInfo<void> {
  const MyHomeRoute() : super(name, path: '/');

  static const String name = 'MyHomeRoute';
}

/// generated route for [_i1.HomeListPage]
class HomeListRoute extends _i2.PageRouteInfo<void> {
  const HomeListRoute() : super(name, path: '/home-list-page');

  static const String name = 'HomeListRoute';
}

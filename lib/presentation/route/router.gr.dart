// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../core/splash_page.dart' as _i1;
import '../onboarding/getting_started.dart' as _i2;
import '../onboarding/sign_in/sign_in.dart' as _i3;
import '../onboarding/sign_up/sign_up.dart' as _i4;
import '../root/root_page.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    GettingStarted.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.GettingStarted());
    },
    SignIn.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignIn());
    },
    SignUp.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUp());
    },
    RootRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RootPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(GettingStarted.name, path: '/getting-started'),
        _i6.RouteConfig(SignIn.name, path: '/sign-in'),
        _i6.RouteConfig(SignUp.name, path: '/sign-up'),
        _i6.RouteConfig(RootRoute.name, path: '/root-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.GettingStarted]
class GettingStarted extends _i6.PageRouteInfo<void> {
  const GettingStarted() : super(GettingStarted.name, path: '/getting-started');

  static const String name = 'GettingStarted';
}

/// generated route for
/// [_i3.SignIn]
class SignIn extends _i6.PageRouteInfo<void> {
  const SignIn() : super(SignIn.name, path: '/sign-in');

  static const String name = 'SignIn';
}

/// generated route for
/// [_i4.SignUp]
class SignUp extends _i6.PageRouteInfo<void> {
  const SignUp() : super(SignUp.name, path: '/sign-up');

  static const String name = 'SignUp';
}

/// generated route for
/// [_i5.RootPage]
class RootRoute extends _i6.PageRouteInfo<void> {
  const RootRoute() : super(RootRoute.name, path: '/root-page');

  static const String name = 'RootRoute';
}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../app/pages/about_us_page.dart' as _i3;
import '../app/pages/contacts_page.dart' as _i2;
import '../app/pages/login_page.dart' as _i1;
import '../app/pages/main_page.dart' as _i5;
import '../app/pages/register_page.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    ContactsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ContactsPage());
    },
    AboutUsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AboutUsPage());
    },
    RegisterRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterPage());
    },
    MainRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MainPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(LoginRoute.name, path: '/login'),
        _i6.RouteConfig(ContactsRoute.name, path: '/contacts'),
        _i6.RouteConfig(AboutUsRoute.name, path: '/aboutUs'),
        _i6.RouteConfig(RegisterRoute.name, path: '/register'),
        _i6.RouteConfig(MainRoute.name, path: '/')
      ];
}

/// generated route for [_i1.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i2.ContactsPage]
class ContactsRoute extends _i6.PageRouteInfo<void> {
  const ContactsRoute() : super(name, path: '/contacts');

  static const String name = 'ContactsRoute';
}

/// generated route for [_i3.AboutUsPage]
class AboutUsRoute extends _i6.PageRouteInfo<void> {
  const AboutUsRoute() : super(name, path: '/aboutUs');

  static const String name = 'AboutUsRoute';
}

/// generated route for [_i4.RegisterPage]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute() : super(name, path: '/register');

  static const String name = 'RegisterRoute';
}

/// generated route for [_i5.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute() : super(name, path: '/');

  static const String name = 'MainRoute';
}

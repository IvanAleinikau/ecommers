// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../../app/pages/about_us_page.dart' as _i3;
import '../../app/pages/accessories/accessories_page.dart' as _i9;
import '../../app/pages/accessories/widgets/accessories_details.dart' as _i13;
import '../../app/pages/acoustics/acoustics_page.dart' as _i8;
import '../../app/pages/acoustics/widgets/acoustics_detailed.dart' as _i12;
import '../../app/pages/admin_panel/admin_panel_page.dart' as _i5;
import '../../app/pages/contacts_page.dart' as _i2;
import '../../app/pages/login_page.dart' as _i1;
import '../../app/pages/main_page.dart' as _i6;
import '../../app/pages/news/news_page.dart' as _i10;
import '../../app/pages/register_page.dart' as _i4;
import '../../app/pages/vinyl/vinyl_page.dart' as _i7;
import '../../app/pages/vinyl/widgets/vinyl_detailed.dart' as _i11;
import '../model/accessories_model.dart' as _i18;
import '../model/acoustics_model.dart' as _i17;
import '../model/vinyl_model.dart' as _i16;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    ContactsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ContactsPage());
    },
    AboutUsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AboutUsPage());
    },
    RegisterRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterPage());
    },
    AdminPanelRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AdminPanelPage());
    },
    MainRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MainPage());
    },
    VinylRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.VinylPage());
    },
    AcousticsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AcousticsPage());
    },
    AccessoriesRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.AccessoriesPage());
    },
    NewsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.NewsPage());
    },
    VinylDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<VinylDetailedRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.VinylDetailed(key: args.key, vinyl: args.vinyl));
    },
    AcousticsDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<AcousticsDetailedRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i12.AcousticsDetailed(key: args.key, acoustics: args.acoustics));
    },
    AccessoriesDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<AccessoriesDetailedRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.AccessoriesDetailed(
              key: args.key, accessories: args.accessories));
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i14.RouteConfig(LoginRoute.name, path: '/login'),
        _i14.RouteConfig(ContactsRoute.name, path: '/contacts'),
        _i14.RouteConfig(AboutUsRoute.name, path: '/aboutUs'),
        _i14.RouteConfig(RegisterRoute.name, path: '/register'),
        _i14.RouteConfig(AdminPanelRoute.name, path: '/admin'),
        _i14.RouteConfig(MainRoute.name, path: '/home'),
        _i14.RouteConfig(VinylRoute.name, path: '/vinyl'),
        _i14.RouteConfig(AcousticsRoute.name, path: '/acoustics'),
        _i14.RouteConfig(AccessoriesRoute.name, path: '/accessories'),
        _i14.RouteConfig(NewsRoute.name, path: '/news'),
        _i14.RouteConfig(VinylDetailedRoute.name, path: '/vinyl_details'),
        _i14.RouteConfig(AcousticsDetailedRoute.name,
            path: '/acoustics_details'),
        _i14.RouteConfig(AccessoriesDetailedRoute.name,
            path: '/accessories_details')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.ContactsPage]
class ContactsRoute extends _i14.PageRouteInfo<void> {
  const ContactsRoute() : super(ContactsRoute.name, path: '/contacts');

  static const String name = 'ContactsRoute';
}

/// generated route for
/// [_i3.AboutUsPage]
class AboutUsRoute extends _i14.PageRouteInfo<void> {
  const AboutUsRoute() : super(AboutUsRoute.name, path: '/aboutUs');

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterRoute extends _i14.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i5.AdminPanelPage]
class AdminPanelRoute extends _i14.PageRouteInfo<void> {
  const AdminPanelRoute() : super(AdminPanelRoute.name, path: '/admin');

  static const String name = 'AdminPanelRoute';
}

/// generated route for
/// [_i6.MainPage]
class MainRoute extends _i14.PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/home');

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i7.VinylPage]
class VinylRoute extends _i14.PageRouteInfo<void> {
  const VinylRoute() : super(VinylRoute.name, path: '/vinyl');

  static const String name = 'VinylRoute';
}

/// generated route for
/// [_i8.AcousticsPage]
class AcousticsRoute extends _i14.PageRouteInfo<void> {
  const AcousticsRoute() : super(AcousticsRoute.name, path: '/acoustics');

  static const String name = 'AcousticsRoute';
}

/// generated route for
/// [_i9.AccessoriesPage]
class AccessoriesRoute extends _i14.PageRouteInfo<void> {
  const AccessoriesRoute() : super(AccessoriesRoute.name, path: '/accessories');

  static const String name = 'AccessoriesRoute';
}

/// generated route for
/// [_i10.NewsPage]
class NewsRoute extends _i14.PageRouteInfo<void> {
  const NewsRoute() : super(NewsRoute.name, path: '/news');

  static const String name = 'NewsRoute';
}

/// generated route for
/// [_i11.VinylDetailed]
class VinylDetailedRoute extends _i14.PageRouteInfo<VinylDetailedRouteArgs> {
  VinylDetailedRoute({_i15.Key? key, required _i16.Vinyl vinyl})
      : super(VinylDetailedRoute.name,
            path: '/vinyl_details',
            args: VinylDetailedRouteArgs(key: key, vinyl: vinyl));

  static const String name = 'VinylDetailedRoute';
}

class VinylDetailedRouteArgs {
  const VinylDetailedRouteArgs({this.key, required this.vinyl});

  final _i15.Key? key;

  final _i16.Vinyl vinyl;

  @override
  String toString() {
    return 'VinylDetailedRouteArgs{key: $key, vinyl: $vinyl}';
  }
}

/// generated route for
/// [_i12.AcousticsDetailed]
class AcousticsDetailedRoute
    extends _i14.PageRouteInfo<AcousticsDetailedRouteArgs> {
  AcousticsDetailedRoute({_i15.Key? key, required _i17.Acoustics acoustics})
      : super(AcousticsDetailedRoute.name,
            path: '/acoustics_details',
            args: AcousticsDetailedRouteArgs(key: key, acoustics: acoustics));

  static const String name = 'AcousticsDetailedRoute';
}

class AcousticsDetailedRouteArgs {
  const AcousticsDetailedRouteArgs({this.key, required this.acoustics});

  final _i15.Key? key;

  final _i17.Acoustics acoustics;

  @override
  String toString() {
    return 'AcousticsDetailedRouteArgs{key: $key, acoustics: $acoustics}';
  }
}

/// generated route for
/// [_i13.AccessoriesDetailed]
class AccessoriesDetailedRoute
    extends _i14.PageRouteInfo<AccessoriesDetailedRouteArgs> {
  AccessoriesDetailedRoute(
      {_i15.Key? key, required _i18.Accessories accessories})
      : super(AccessoriesDetailedRoute.name,
            path: '/accessories_details',
            args: AccessoriesDetailedRouteArgs(
                key: key, accessories: accessories));

  static const String name = 'AccessoriesDetailedRoute';
}

class AccessoriesDetailedRouteArgs {
  const AccessoriesDetailedRouteArgs({this.key, required this.accessories});

  final _i15.Key? key;

  final _i18.Accessories accessories;

  @override
  String toString() {
    return 'AccessoriesDetailedRouteArgs{key: $key, accessories: $accessories}';
  }
}

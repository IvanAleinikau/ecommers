import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/pages/about_us_page.dart';
import 'package:ecommers/app/pages/admin_panel/admin_panel_page.dart';
import 'package:ecommers/app/pages/contacts_page.dart';
import 'package:ecommers/app/pages/login_page.dart';
import 'package:ecommers/app/pages/main_page.dart';
import 'package:ecommers/app/pages/register_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/login',
      page: LoginPage,
      name: 'LoginRoute',
      initial: true,
    ),
    AutoRoute(
      path: '/contacts',
      page: ContactsPage,
      name: 'ContactsRoute',
    ),
    AutoRoute(
      path: '/aboutUs',
      page: AboutUsPage,
      name: 'AboutUsRoute',
    ),
    AutoRoute(
      path: '/register',
      page: RegisterPage,
      name: 'RegisterRoute',
    ),
    AutoRoute(
      path: '/admin',
      page: AdminPanelPage,
      name: 'AdminPanelRoute',
    ),
    AutoRoute(
      path: '/home',
      page: MainPage,
      name: 'MainRoute',
    ),
  ],
)
class $AppRouter {}

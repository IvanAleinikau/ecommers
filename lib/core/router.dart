import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/pages/about_us_page.dart';
import 'package:ecommers/app/pages/contacts_page.dart';
import 'package:ecommers/app/pages/login_page.dart';
import 'package:ecommers/app/pages/main_page.dart';
import 'package:ecommers/app/pages/register_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/login', page: LoginPage),
    AutoRoute(path: '/contacts', page: ContactsPage),
    AutoRoute(path: '/aboutUs', page: AboutUsPage),
    AutoRoute(path: '/register', page: RegisterPage),
    AutoRoute(path: '/', page: MainPage, initial: true),
  ],
)
class $AppRouter {}

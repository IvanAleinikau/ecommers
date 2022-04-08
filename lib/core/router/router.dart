import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/pages/about_us_page.dart';
import 'package:ecommers/app/pages/accessories/accessories_page.dart';
import 'package:ecommers/app/pages/acoustics/acoustics_page.dart';
import 'package:ecommers/app/pages/acoustics/widgets/acoustics_detailed.dart';
import 'package:ecommers/app/pages/admin_panel/admin_panel_page.dart';
import 'package:ecommers/app/pages/contacts_page.dart';
import 'package:ecommers/app/pages/login_page.dart';
import 'package:ecommers/app/pages/main_page.dart';
import 'package:ecommers/app/pages/news/news_page.dart';
import 'package:ecommers/app/pages/register_page.dart';
import 'package:ecommers/app/pages/vinyl/vinyl_page.dart';
import 'package:ecommers/app/pages/vinyl/widgets/vinyl_detailed.dart';

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
    AutoRoute(
      path: '/vinyl',
      page: VinylPage,
      name: 'VinylRoute',
    ),
    AutoRoute(
      path: '/acoustics',
      page: AcousticsPage,
      name: 'AcousticsRoute',
    ),
    AutoRoute(
      path: '/accessories',
      page: AccessoriesPage,
      name: 'AccessoriesRoute',
    ),
    AutoRoute(
      path: '/news',
      page: NewsPage,
      name: 'NewsRoute',
    ),
    AutoRoute(
      path: '/vinyl_details',
      page: VinylDetailed,
      name: 'VinylDetailedRoute',
    ),
    AutoRoute(
      path: '/acoustics_details',
      page: AcousticsDetailed,
      name: 'AcousticsDetailedRoute',
    ),
  ],
)
class $AppRouter {}

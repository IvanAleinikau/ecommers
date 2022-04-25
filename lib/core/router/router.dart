import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/pages/about_us_page.dart';
import 'package:ecommers/app/pages/accessories/accessories_page.dart';
import 'package:ecommers/app/pages/accessories/widgets/accessories_details.dart';
import 'package:ecommers/app/pages/acoustics/acoustics_page.dart';
import 'package:ecommers/app/pages/acoustics/widgets/acoustics_detailed.dart';
import 'package:ecommers/app/pages/admin_panel/admin_panel_page.dart';
import 'package:ecommers/app/pages/contacts_page.dart';
import 'package:ecommers/app/pages/login_page.dart';
import 'package:ecommers/app/pages/main_page.dart';
import 'package:ecommers/app/pages/news/news_page.dart';
import 'package:ecommers/app/pages/news/widget/news_detailed.dart';
import 'package:ecommers/app/pages/register_page.dart';
import 'package:ecommers/app/pages/vinyl/vinyl_page.dart';
import 'package:ecommers/app/pages/vinyl/widgets/vinyl_detailed.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      path: '/login',
      page: LoginPage,
      name: 'LoginRoute',
      initial: true,
    ),
    CustomRoute(
      path: '/contacts',
      page: ContactsPage,
      name: 'ContactsRoute',
    ),
    CustomRoute(
      path: '/aboutUs',
      page: AboutUsPage,
      name: 'AboutUsRoute',
    ),
    CustomRoute(
      path: '/register',
      page: RegisterPage,
      name: 'RegisterRoute',
    ),
    CustomRoute(
      path: '/admin',
      page: AdminPanelPage,
      name: 'AdminPanelRoute',
    ),
    CustomRoute(
      path: '/home',
      page: MainPage,
      name: 'MainRoute',
    ),
    CustomRoute(
      path: '/vinyl',
      page: VinylPage,
      name: 'VinylRoute',
    ),
    CustomRoute(
      path: '/acoustics',
      page: AcousticsPage,
      name: 'AcousticsRoute',
    ),
    CustomRoute(
      path: '/accessories',
      page: AccessoriesPage,
      name: 'AccessoriesRoute',
    ),
    CustomRoute(
      path: '/news',
      page: NewsPage,
      name: 'NewsRoute',
    ),
    CustomRoute(
      path: '/vinyl_details',
      page: VinylDetailed,
      name: 'VinylDetailedRoute',
    ),
    CustomRoute(
      path: '/acoustics_details',
      page: AcousticsDetailed,
      name: 'AcousticsDetailedRoute',
    ),
    CustomRoute(
      path: '/accessories_details',
      page: AccessoriesDetailed,
      name: 'AccessoriesDetailedRoute',
    ),
    CustomRoute(
      path: '/news_details',
      page: NewsDetailed,
      name: 'NewsDetailedRoute',
    ),
  ],
)
class $AppRouter {}

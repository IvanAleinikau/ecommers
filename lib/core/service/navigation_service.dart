import 'package:ecommers/app/pages/contacts_page.dart';
import 'package:ecommers/app/pages/main_page.dart';
import 'package:ecommers/app/pages/login_page.dart';
import 'package:ecommers/app/pages/register_page.dart';
import 'package:get/get.dart';

class NavigationService {
  late String route;

  void navigateTo(dynamic page) {
    if (page == Pages.main) {
      route = '/';
      Get.offAllNamed(route);
    } else {
      switch (page) {
        case Pages.contacts:
          route = '/contacts';
          break;
      }
      Get.toNamed(route);
    }
  }

  void navigateToLogin() {
    route = '/login';
    Get.offAllNamed(route);
  }

  void navigateToRegister() {
    route = '/register';
    Get.offAllNamed(route);
  }

  List<GetPage<dynamic>> getPages() {
    return [
      GetPage(name: '/', page: () => const MainPage()),
      GetPage(name: '/contacts', page: () => const ContactsPage()),
      GetPage(name: '/login', page: () => const LoginPage()),
      GetPage(name: '/register', page: () => const RegisterPage()),
    ];
  }
}

enum Pages {
  main,
  contacts,
  aboutUs,
  news,
  accessories,
  acoustics,
  vinyl,
  register,
  login,
}

import 'package:ecommers/app/pages/contacts_page.dart';
import 'package:ecommers/app/pages/main_page.dart';
import 'package:get/get.dart';

class NavigationService {
  void navigateTo(dynamic page) {
    late String route;
    if (page == Pages.main) {
      Get.offAllNamed('/');
    } else {
      switch (page) {
        case Pages.contacts:
          route = '/contacts';
          break;
      }
      Get.toNamed(route);
    }
  }

  List<GetPage<dynamic>> getPages() {
    return [
      GetPage(name: '/', page: () => const MainPage()),
      GetPage(name: '/contacts', page: () => const ContactsPage()),
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
}

import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/app/widgets/main_page_widgets/brands.dart';
import 'package:ecommers/app/widgets/main_page_widgets/consultation.dart';
import 'package:ecommers/core/service/navigation_service.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAppBar(
            page: Pages.contacts,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.white70,
                  height: 10,
                ),
                Container(
                  height: 700,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/image/proig5.jpg'),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(350, 130, 350, 130),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 70),
                            child: const Text(
                              'Контакты:',
                              style: Style.contacts,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 50),
                            child: const Text(
                              'Брест, ул. Дзержинского 3, ТЦ "Общага", 1 этаж, пав. 107',
                              style: Style.info2,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 30),
                            child: const Text(
                              '+375(33)672-90-86',
                              style: Style.info2,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 30),
                            child: const Text(
                              'vinylcollection@gmail.com',
                              style: Style.info2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white70,
                  height: 10,
                ),
                const Consultation(),
                Brands(),
                const AppBottomBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

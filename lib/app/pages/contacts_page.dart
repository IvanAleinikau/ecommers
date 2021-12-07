import 'package:ecommers/app/pages/pages.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/app/widgets/contacts_page_widgets/contacts.dart';
import 'package:ecommers/app/widgets/contacts_page_widgets/separator.dart';
import 'package:ecommers/app/widgets/main_page_widgets/brands.dart';
import 'package:ecommers/app/widgets/main_page_widgets/consultation.dart';
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
                const Separator(),
                const Contacts(),
                const Separator(),
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

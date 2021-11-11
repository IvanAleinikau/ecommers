import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/core/service/navigation_service.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          MyAppBar(
            page: Pages.contacts,
          ),
        ],
      ),
    );
  }
}

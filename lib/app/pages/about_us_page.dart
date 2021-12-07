import 'package:ecommers/app/pages/pages.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/app/widgets/contacts_page_widgets/separator.dart';
import 'package:ecommers/app/widgets/main_page_widgets/about_us.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAppBar(
            page: Pages.aboutUs,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Separator(),
                const AboutUs(),
                const Separator(),
                const AppBottomBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

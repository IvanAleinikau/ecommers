import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/core/service/navigation_service.dart';
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
          const MyAppBar(page: Pages.aboutUs),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const AppBottomBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

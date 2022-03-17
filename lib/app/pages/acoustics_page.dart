import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class AcousticsPage extends StatefulWidget {
  const AcousticsPage({Key? key}) : super(key: key);

  @override
  _AcousticsPageState createState() => _AcousticsPageState();
}

class _AcousticsPageState extends State<AcousticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAppBar(
            page: Pages.acoustics,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 100,
                ),
                const AppBottomBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class VinylPage extends StatefulWidget {
  const VinylPage({Key? key}) : super(key: key);

  @override
  _VinylPageState createState() => _VinylPageState();
}

class _VinylPageState extends State<VinylPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAppBar(
            page: Pages.vinyl,
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

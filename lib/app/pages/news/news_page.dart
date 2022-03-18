import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/pages/news/widget/news_section.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/app/widgets/contacts_page_widgets/separator.dart';
import 'package:ecommers/app/widgets/main_page_widgets/brands.dart';
import 'package:ecommers/app/widgets/main_page_widgets/consultation.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAppBar(
            page: Pages.news,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Separator(),
                NewsSection(
                  onTap: () => _controller.animateTo(
                    1,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 600),
                  ),
                ),
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

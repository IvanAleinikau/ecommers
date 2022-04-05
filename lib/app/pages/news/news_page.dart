import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/pages/news/widget/news_section.dart';
import 'package:ecommers/app/pages/news/widget/news_widget.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/app/widgets/contacts_page_widgets/separator.dart';
import 'package:ecommers/app/widgets/main_page_widgets/brands.dart';
import 'package:ecommers/app/widgets/main_page_widgets/consultation.dart';
import 'package:ecommers/core/blocs/news_bloc/news_cubit.dart';
import 'package:ecommers/core/blocs/news_bloc/news_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final ScrollController _controller = ScrollController();

  late NewsCubit _cubit;

  @override
  void initState() {
    _cubit = NewsCubit();
    super.initState();
  }

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
                    500,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                  child: BlocConsumer<NewsCubit, NewsState>(
                    bloc: _cubit,
                    builder: (context, state) {
                      return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: state.newsList.length,
                        itemBuilder: (context, index) {
                          return NewsWidget(news: state.newsList[index]);
                        },
                      );
                    },
                    listener: (context, state) {},
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

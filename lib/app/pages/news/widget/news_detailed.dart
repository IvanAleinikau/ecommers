import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/back_button.dart';
import 'package:ecommers/app/widgets/order_button.dart';
import 'package:ecommers/core/model/news_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsDetailed extends StatefulWidget {
  final News news;

  const NewsDetailed({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  State<NewsDetailed> createState() => _NewsDetailedState();
}

class _NewsDetailedState extends State<NewsDetailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: ColorPalette.authBackground),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: MyBackButton(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 150),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.of(context).size.width / 2.5,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              widget.news.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              widget.news.title,
                              style: Style.montserrat22w400.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              widget.news.subtitle,
                              style: Style.montserrat18w400,
                            ),
                            const SizedBox(height: 30),
                            OrderButton(
                              onTap: () {},
                            ),
                            const SizedBox(height: 40),
                            Text(
                              widget.news.description,
                              style: Style.montserrat16w400,
                            ),
                            const SizedBox(height: 20),
                            const Expanded(child: EmptyWidget()),
                            const SizedBox(height: 10),
                            Text(
                              DateFormat('dd.MM.yyyy').format(widget.news.date),
                              style: Style.montserrat14w400,
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

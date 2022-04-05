import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/core/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsWidget extends StatefulWidget {
  final News news;

  const NewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                height: size.width / 4,
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
            const SizedBox(height: 30),
            Text(
              widget.news.title,
              style: Style.montserrat16w400.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              widget.news.subtitle,
              style: Style.montserrat12w400.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Text(
              DateFormat('dd.MM.yyyy').format(widget.news.date),
              style: Style.montserrat12w400.copyWith(color: const Color(0xFF575656)),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

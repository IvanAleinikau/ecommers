import 'package:ecommers/app/theme/image.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class NewsSection extends StatelessWidget {
  final VoidCallback onTap;

  const NewsSection({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Новости',
                  style: Style.montserrat30w400.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Новости для всех',
                  style: Style.montserrat20w400.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(right: 50, top: 50),
            child: AspectRatio(
              aspectRatio: 1,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  MyImage.newsImage,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class TextElement extends StatelessWidget {
  final String text;
  final double value;

  const TextElement({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: value),
      child: Text(
        text,
        style: Style.bottomBarElement,
      ),
    );
  }
}

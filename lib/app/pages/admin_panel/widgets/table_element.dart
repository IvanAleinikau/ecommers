import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class TableElement extends StatelessWidget {
  final double width;
  final String text;

  const TableElement({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      child: Center(
        child: Text(
          text,
          style: Style.montserrat16w400,
        ),
      ),
    );
  }
}

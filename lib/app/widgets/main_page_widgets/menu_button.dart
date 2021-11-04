import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;

  const MenuButton({
    Key? key,
    required this.title,
    required this.padding,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: ColorPalette.mainPageButton,
          textStyle: textStyle,
        ),
        onPressed: () {},
        child: Text(title),
      ),
    );
  }
}

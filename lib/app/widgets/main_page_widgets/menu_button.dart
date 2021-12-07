import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;
  final void Function()? onTap;

  const MenuButton({
    Key? key,
    required this.title,
    required this.padding,
    required this.textStyle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(title, style: textStyle),
          onTap: onTap,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AuthTitle extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry padding;
  final TextStyle? style;

  const AuthTitle({
    Key? key,
    required this.title,
    required this.padding,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(title, style: style),
    );
  }
}

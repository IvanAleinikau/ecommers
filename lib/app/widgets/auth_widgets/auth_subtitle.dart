import 'package:flutter/material.dart';

class AuthSubtitle extends StatelessWidget {
  final String subtitle;
  final EdgeInsetsGeometry padding;
  final TextStyle? style;

  const AuthSubtitle({
    Key? key,
    required this.subtitle,
    required this.padding,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(subtitle, style: style),
    );
  }
}

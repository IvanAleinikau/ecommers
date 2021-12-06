import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class AuthNavigator extends StatelessWidget {
  final String text;
  final String buttonText;
  final void Function()? onPressed;

  const AuthNavigator({
    Key? key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: Style.line),
        TextButton(
          onPressed: onPressed,
          child: Text(buttonText, style: Style.line),
        ),
      ],
    );
  }
}

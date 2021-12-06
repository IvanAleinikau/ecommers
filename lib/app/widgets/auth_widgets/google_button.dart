import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class GoogleButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final void Function() onPressed;
  final String text;

  const GoogleButton({
    Key? key,
    required this.padding,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: SignInButton(
          Buttons.Google,
          elevation: 0,
          onPressed: onPressed,
          text: text,
        ),
      ),
    );
  }
}

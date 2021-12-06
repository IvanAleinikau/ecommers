import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final EdgeInsetsGeometry padding;

  const SignUpButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey.shade300,
            fixedSize: const Size(220, 40),
          ),
          onPressed: onPressed,
          child: Text(text, style: Style.consultationButton2),
        ),
      ),
    );
  }
}

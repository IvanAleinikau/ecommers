import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MyButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: Style.montserrat14w400.copyWith(color: Colors.blue),
      ),
    );
  }
}

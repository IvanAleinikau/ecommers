import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

void showErrorAuthMessage({required String message, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      content: Text(
        message,
        style: Style.montserrat14w400,
      ),
      duration: const Duration(seconds: 2),
    ),
  );
}

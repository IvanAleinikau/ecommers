import 'package:flutter/material.dart';

class AdminPanelInput extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? padding;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const AdminPanelInput({
    Key? key,
    required this.hintText,
    this.padding,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
        controller: controller,
        validator: validator,
      ),
    );
  }
}

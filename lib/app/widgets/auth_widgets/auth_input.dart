import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final EdgeInsetsGeometry padding;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  const AuthInput({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.padding,
    required this.controller,
    required this.validator,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
        ),
        controller: controller,
        validator: validator,
        obscureText: obscureText,
      ),
    );
  }
}

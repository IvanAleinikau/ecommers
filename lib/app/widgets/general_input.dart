import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class GeneralInput extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? padding;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const GeneralInput({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hintText,
            style: Style.montserrat14w400,
          ),
          const SizedBox(height: 5),
          TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.zero,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.zero,
              ),
            ),
            controller: controller,
            validator: validator,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SectionName extends StatelessWidget {
  final String name;
  final TextStyle style;

   const SectionName({
    Key? key,
    required this.name,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
      child: Center(
        child: Text(
          name,
          style: style,
        ),
      ),
    );
  }
}

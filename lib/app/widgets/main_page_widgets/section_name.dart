import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class SectionName extends StatelessWidget {
  final String name;

  const SectionName({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
      child: Center(
        child: Text(
          name,
          style: Style.catalog,
        ),
      ),
    );
  }
}

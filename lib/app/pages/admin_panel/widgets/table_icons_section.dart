import 'package:flutter/material.dart';

class TableIconsSection extends StatelessWidget {
  final double width;
  final List<Widget> icons;

  const TableIconsSection({
    Key? key,
    required this.width,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: icons,
      ),
    );
  }
}

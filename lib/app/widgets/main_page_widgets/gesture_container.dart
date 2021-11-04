import 'package:flutter/material.dart';

class GestureContainer extends StatelessWidget {
  final Color color;

  const GestureContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: AspectRatio(
        aspectRatio: 1,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            color: color,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}

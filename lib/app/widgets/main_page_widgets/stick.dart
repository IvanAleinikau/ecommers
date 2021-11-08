import 'package:flutter/material.dart';

class Stick extends StatelessWidget {
  const Stick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 100),
      width: 70,
      height: 4,
      color: Colors.white,
    );
  }
}

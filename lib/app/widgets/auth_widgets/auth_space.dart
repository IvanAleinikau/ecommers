import 'package:flutter/material.dart';

class AuthSpace extends StatelessWidget {
  final List<Widget> widgets;

  const AuthSpace({
    Key? key,
    required this.widgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
        right: Radius.circular(10),
      ),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: widgets,
        ),
      ),
    );
  }
}

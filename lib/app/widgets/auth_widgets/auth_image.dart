import 'package:flutter/material.dart';

class AuthImage extends StatelessWidget {
  const AuthImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
        left: Radius.circular(10),
      ),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/image/oboryd.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

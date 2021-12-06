import 'package:flutter/material.dart';

class ButtonSeparator extends StatelessWidget {
  const ButtonSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          color: Colors.grey.shade300,
          height: 2,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: const Text(
            'Или',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
              fontFamily: 'Montserrat',
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Container(
          width: 60,
          color: Colors.grey.shade300,
          height: 2,
        ),
      ],
    );
  }
}

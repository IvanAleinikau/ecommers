import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class GoToRegisterPageButton extends StatelessWidget {
  const GoToRegisterPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Ещё не зарегистрированы?',
          style: Style.line,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Создать аккаунт',
            style: Style.line,
          ),
        ),
      ],
    );
  }
}

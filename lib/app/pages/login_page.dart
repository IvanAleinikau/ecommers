import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_image.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_input.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_space.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_subtitle.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_title.dart';
import 'package:ecommers/app/widgets/auth_widgets/button_separator.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_navigator.dart';
import 'package:ecommers/app/widgets/auth_widgets/google_button.dart';
import 'package:ecommers/app/widgets/auth_widgets/sign_in_button.dart';
import 'package:ecommers/core/service/navigation_service.dart';
import 'package:ecommers/core/validator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: ColorPalette.authBackground),
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: AuthImage(),
            ),
            Expanded(
              flex: 1,
              child: Form(
                key: _formKey,
                child: AuthSpace(
                  widgets: [
                    const AuthTitle(
                      title: 'Vinyl Collection',
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                      style: Style.authTitle,
                    ),
                    const AuthSubtitle(
                      subtitle: 'Добро пожаловать в Vinyl Collection',
                      padding: EdgeInsets.only(bottom: 7),
                      style: Style.authSubtitle,
                    ),
                    AuthInput(
                      hintText: 'Введите почту',
                      labelText: 'Почта',
                      padding: const EdgeInsets.fromLTRB(150, 30, 150, 0),
                      controller: _email,
                      validator: (value) => Validator.validateEmail(value!),
                      obscureText: false,
                    ),
                    AuthInput(
                      hintText: 'Введите пароль',
                      labelText: 'Пароль',
                      padding: const EdgeInsets.fromLTRB(150, 25, 150, 0),
                      controller: _password,
                      validator: (value) => Validator.validateNotNull(value!),
                      obscureText: true,
                    ),
                    SignInButton(
                      text: 'Войти',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 25),
                    ),
                    const ButtonSeparator(),
                    GoogleButton(
                      padding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
                      onPressed: () => print('тык2'),
                      text: 'Sing in with Google',
                    ),
                    AuthNavigator(
                      text: 'Ещё не зарегистрированы?',
                      buttonText: 'Создать аккаунт',
                      onPressed: () => NavigationService().navigateToRegister(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

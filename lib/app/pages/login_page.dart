import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_image.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_input.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_subtitle.dart';
import 'package:ecommers/app/widgets/auth_widgets/auth_title.dart';
import 'package:ecommers/app/widgets/auth_widgets/button_separator.dart';
import 'package:ecommers/app/widgets/auth_widgets/go_to_register_page_button.dart';
import 'package:ecommers/app/widgets/auth_widgets/google_button.dart';
import 'package:ecommers/app/widgets/auth_widgets/sing_in_button.dart';
import 'package:ecommers/core/validator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200),
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: AuthImage(),
            ),
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(10),
                ),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const AuthTitle(
                        title: 'Vinyl Collection',
                        padding: EdgeInsets.fromLTRB(0, 50, 0, 40),
                        style: Style.authTitle,
                      ),
                      const AuthSubtitle(
                        subtitle: 'Добро пожаловать в Vinyl Collection',
                        padding: EdgeInsets.only(bottom: 15),
                        style: Style.authSubtitle,
                      ),
                      AuthInput(
                        hintText: 'Введите почту',
                        labelText: 'Почта',
                        padding: const EdgeInsets.fromLTRB(150, 30, 150, 0),
                        controller: _email,
                        validator: (value) => Validator.validateName(value!),
                        obscureText: false,
                      ),
                      AuthInput(
                        hintText: 'Введите пароль',
                        labelText: 'Пароль',
                        padding: const EdgeInsets.fromLTRB(150, 25, 150, 0),
                        controller: _password,
                        validator: (value) => Validator.validateName(value!),
                        obscureText: true,
                      ),
                      SingInButton(
                        text: 'Войти',
                        onPressed: () => print('тык'),
                        padding: const EdgeInsets.fromLTRB(20, 30, 20, 25),
                      ),
                      const ButtonSeparator(),
                      GoogleButton(
                        padding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
                        onPressed: () => print('тык2'),
                        text: 'Sing in with Google',
                      ),
                      const GoToRegisterPageButton(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/message/message.dart';
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
import 'package:ecommers/core/blocs/login_bloc/login_cubit.dart';
import 'package:ecommers/core/blocs/login_bloc/login_state.dart';
import 'package:ecommers/core/router/router.gr.dart';
import 'package:ecommers/core/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);

  final LoginCubit _cubit = LoginCubit();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        bloc: _cubit,
        listener: (BuildContext context, state) {
          state.maybeWhen(
            successfully: () => context.router.replace(const MainRoute()),
            loading: () => _isLoading.value = true,
            error: (String message) {
              _isLoading.value = false;
              showErrorAuthMessage(message: message, context: context);
            },
            orElse: () {},
          );
        },
        builder: (BuildContext context, state) {
          return Column(
            children: [
              ValueListenableBuilder(
                valueListenable: _isLoading,
                builder: (context, bool isLoading, child) {
                  return isLoading ? const LinearProgressIndicator() : const EmptyWidget();
                },
              ),
              Expanded(
                child: Container(
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
                                padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                                style: Style.authTitle,
                              ),
                              const AuthSubtitle(
                                subtitle: '?????????? ???????????????????? ?? Vinyl Collection',
                                padding: EdgeInsets.only(bottom: 7),
                                style: Style.authSubtitle,
                              ),
                              AuthInput(
                                hintText: '?????????????? ??????????',
                                labelText: '??????????',
                                padding: const EdgeInsets.fromLTRB(150, 30, 150, 0),
                                controller: _email,
                                validator: (value) => Validator.validateEmail(value!),
                                obscureText: false,
                              ),
                              AuthInput(
                                hintText: '?????????????? ????????????',
                                labelText: '????????????',
                                padding: const EdgeInsets.fromLTRB(150, 25, 150, 0),
                                controller: _password,
                                validator: (value) => Validator.validateNotNull(value!),
                                obscureText: true,
                              ),
                              SignInButton(
                                text: '??????????',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _cubit.onSingIn(email: _email.text, password: _password.text);
                                  }
                                },
                                padding: const EdgeInsets.fromLTRB(20, 30, 20, 25),
                              ),
                              const ButtonSeparator(),
                              GoogleButton(
                                padding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
                                onPressed: () => _cubit.onSingInWithGoogle(),
                                text: 'Sing in with Google',
                              ),
                              AuthNavigator(
                                text: '?????? ???? ?????????????????????????????????',
                                buttonText: '?????????????? ??????????????',
                                onPressed: () => context.router.navigate(const RegisterRoute()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

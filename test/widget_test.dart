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
import 'package:ecommers/app/widgets/auth_widgets/sign_up_button.dart';
import 'package:ecommers/app/widgets/contacts_page_widgets/separator.dart';
import 'package:ecommers/app/widgets/main_page_widgets/about_us.dart';
import 'package:ecommers/app/widgets/main_page_widgets/consultation.dart';
import 'package:ecommers/app/widgets/main_page_widgets/menu_button.dart';
import 'package:ecommers/app/widgets/main_page_widgets/section_name.dart';
import 'package:ecommers/app/widgets/main_page_widgets/stick.dart';
import 'package:ecommers/app/widgets/main_page_widgets/text_element.dart';
import 'package:ecommers/core/service/navigation_service.dart';
import 'package:ecommers/core/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  group(
    'GoldenBuilder',
    () {
      testGoldens('About US', (tester) async {
        const widget = AboutUs();
        final builder = GoldenBuilder.column()..addScenario('About US', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'about_us');
      });

      testGoldens('Separator', (tester) async {
        const widget = Separator();
        final builder = GoldenBuilder.column()
          ..addScenario('Separator', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'separator');
      });

      testGoldens('Consultation', (tester) async {
        const widget = Consultation();
        final builder = GoldenBuilder.column()
          ..addScenario('Consultation', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'consultation');
      });

      testGoldens('MenuButton', (tester) async {
        const widget = MenuButton(
          title: 'ВИНИЛ',
          padding: EdgeInsets.fromLTRB(5, 25, 25, 0),
          textStyle: Style.mainButton,
          page: Pages.contacts,
        );

        final builder = GoldenBuilder.column()
          ..addScenario('MenuButton', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'menu_button');
      });

      testGoldens('SectionName', (tester) async {
        const widget = SectionName(
          name: 'Каталог',
          style: Style.catalog,
        );

        final builder = GoldenBuilder.column()
          ..addScenario('SectionName', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'section_name');
      });

      testGoldens('Stick', (tester) async {
        const widget = Stick();
        final builder = GoldenBuilder.column()..addScenario('Stick', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'stick');
      });

      testGoldens('TextElement', (tester) async {
        const widget = TextElement(
          text: 'ИП Алейников Иван Сергеевич',
          value: 5,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('TextElement', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'text_element');
      });

      testGoldens('AuthImage', (tester) async {
        const widget = AuthImage();
        final builder = GoldenBuilder.column()
          ..addScenario('AuthImage', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_image');
      });

      testGoldens('AuthInput', (tester) async {
        final TextEditingController _email = TextEditingController();
        final widget = AuthInput(
          hintText: '',
          labelText: '',
          padding: EdgeInsets.zero,
          controller: _email,
          validator: (value) => Validator.validateName(value!),
          obscureText: true,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('AuthInput', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_input');
      });

      testGoldens('AuthSubtitle', (tester) async {
        const widget = AuthSubtitle(
          subtitle: '',
          padding: EdgeInsets.zero,
          style: Style.authSubtitle,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('AuthSubtitle', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_subtitle');
      });

      testGoldens('AuthTitle', (tester) async {
        const widget = AuthTitle(
          title: '',
          padding: EdgeInsets.zero,
          style: Style.authTitle,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('AuthTitle', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_title');
      });

      testGoldens('ButtonSeparator', (tester) async {
        const widget = ButtonSeparator();
        final builder = GoldenBuilder.column()
          ..addScenario('ButtonSeparator', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'button_separator');
      });

      testGoldens('AuthNavigator', (tester) async {
        final widget = AuthNavigator(
          text: 'Ещё не зарегистрированы?',
          buttonText: 'Создать аккаунт',
          onPressed: () => NavigationService().navigateTo(Pages.register),
        );
        final builder = GoldenBuilder.column()
          ..addScenario('AuthNavigator', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_navigator');
      });

      testGoldens('AuthSpace', (tester) async {
        const widget = AuthSpace(widgets: []);
        final builder = GoldenBuilder.column()
          ..addScenario('AuthSpace', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'auth_space');
      });

      testGoldens('GoogleButton', (tester) async {
        final widget = SizedBox(
          width: 220.0,
          height: 36.0,
          child: GoogleButton(
            padding: EdgeInsets.zero,
            onPressed: () => print('тык2'),
            text: '',
          ),
        );
        final builder = GoldenBuilder.column()
          ..addScenario('GoogleButton', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'google_button');
      });

      testGoldens('SingInButton', (tester) async {
        final widget = SignInButton(
          text: '',
          onPressed: () => print('тык'),
          padding: EdgeInsets.zero,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('SingInButton', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'sing_in_button');
      });

      testGoldens('SignUpButton', (tester) async {
        final widget = SignUpButton(
          text: '',
          onPressed: () => print('тык'),
          padding: EdgeInsets.zero,
        );
        final builder = GoldenBuilder.column()
          ..addScenario('SignUpButton', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'sign_up_button');
      });
    },
  );
}

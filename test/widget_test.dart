import 'package:ecommers/app/pages/login_page.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/main_page_widgets/about_us.dart';
import 'package:ecommers/app/widgets/main_page_widgets/consultation.dart';
import 'package:ecommers/app/widgets/main_page_widgets/menu_button.dart';
import 'package:ecommers/app/widgets/main_page_widgets/section_name.dart';
import 'package:ecommers/app/widgets/main_page_widgets/stick.dart';
import 'package:ecommers/app/widgets/main_page_widgets/text_element.dart';
import 'package:ecommers/core/service/navigation_service.dart';
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

      testGoldens('LoginPage', (tester) async {
        const widget = Stick();
        final builder = GoldenBuilder.column()..addScenario('Login', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'login_page');
      });

      testGoldens('MainPage', (tester) async {
        const widget = Stick();
        final builder = GoldenBuilder.column()..addScenario('MainPage', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'main_page');
      });

      testGoldens('GestureContainer', (tester) async {
        const widget = Stick();
        final builder = GoldenBuilder.column()..addScenario('GestureContainer', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'gesture_container');
      });

      testGoldens('Brands', (tester) async {
        const widget = Stick();
        final builder = GoldenBuilder.column()..addScenario('Brands', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'brands');
      });

      testGoldens('BottomAppBar', (tester) async {
        const widget = Stick();
        final builder = GoldenBuilder.column()..addScenario('BottomAppBar', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'bottom_app_bar');
      });

      testGoldens('AppBar', (tester) async {
        const widget = Stick();
        final builder = GoldenBuilder.column()..addScenario('app_bar', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'app_bar');
      });

      testGoldens('ContactsPage', (tester) async {
        const widget = Stick();
        final builder = GoldenBuilder.column()..addScenario('ContactsPage', widget);
        await tester.pumpWidgetBuilder(builder.build());
        await screenMatchesGolden(tester, 'contacts_page');
      });
    },
  );
}

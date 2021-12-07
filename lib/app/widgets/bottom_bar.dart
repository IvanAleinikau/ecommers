import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/main_page_widgets/menu_button.dart';
import 'package:ecommers/app/widgets/main_page_widgets/text_element.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: ColorPalette.barColors,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(100, 30, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'VINYL COLLECTION',
                    style: Style.nameBottomBar,
                  ),
                  TextElement(
                    text: '\u00a9 Vinyl Collection',
                    value: 15,
                  ),
                  TextElement(
                    text: '+375(33) 672 90 96',
                    value: 25,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextElement(
                    text:
                        'Брест, ул. Дзержинского 3, ТЦ "Общага", 1 этаж, пав. 107',
                    value: 5,
                  ),
                  TextElement(
                    text: 'Пн-Вс 11:00 до 19:00',
                    value: 10,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextElement(
                    text: 'ИП Алейников Иван Сергеевич',
                    value: 5,
                  ),
                  TextElement(
                    text: 'В торговом реестре с 5 ноября 2018г.',
                    value: 5,
                  ),
                  TextElement(
                    text: 'УНП 589201823.',
                    value: 5,
                  ),
                  TextElement(
                    text: 'Регистрация №193161449, 05.11.2018,',
                    value: 5,
                  ),
                  TextElement(
                    text: 'Брестский горисполком',
                    value: 5,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(50, 30, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'О НАС',
                      style: Style.nameBottomBar,
                    ),
                  ),
                  MenuButton(
                    title: 'О нас',
                    padding: const EdgeInsets.only(top: 15),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/aboutUs'),
                  ),
                  MenuButton(
                    title: 'Контакты',
                    padding: const EdgeInsets.only(top: 12),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/contacts'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(50, 30, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'ИНФОРМАЦИЯ',
                      style: Style.nameBottomBar,
                    ),
                  ),
                  MenuButton(
                    title: 'Доставка',
                    padding: const EdgeInsets.only(top: 15),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/contacts'),
                  ),
                  MenuButton(
                    title: 'Оплата',
                    padding: const EdgeInsets.only(top: 12),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/contacts'),
                  ),
                  MenuButton(
                    title: 'Возврат, обмен и гарантии',
                    padding: const EdgeInsets.only(top: 12),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/contacts'),
                  ),
                  MenuButton(
                    title: 'Рассрочка',
                    padding: const EdgeInsets.only(top: 12),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/contacts'),
                  ),
                  MenuButton(
                    title: 'Договор публичной оферы',
                    padding: const EdgeInsets.only(top: 12),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/contacts'),
                  ),
                  MenuButton(
                    title: 'Политика конфиденциальности',
                    padding: const EdgeInsets.only(top: 12),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/contacts'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(50, 30, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'ПОКУПКА И',
                      style: Style.nameBottomBar,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'СПЕЦПРЕДЛОЖЕНИЯ',
                      style: Style.nameBottomBar,
                    ),
                  ),
                  MenuButton(
                    title: 'Подарочные сертификаты',
                    padding: const EdgeInsets.only(top: 15),
                    textStyle: Style.bottomBarElement,
                    onTap: () => context.router.pushNamed('/contacts'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

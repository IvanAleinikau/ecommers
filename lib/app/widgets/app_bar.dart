import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/main_page_widgets/menu_button.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final _padding = const EdgeInsets.fromLTRB(5, 25, 25, 0);

  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            backgroundColor: ColorPalette.barColors,
            collapsedHeight: 70,
            pinned: true,
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              title: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: const Text(
                    'Vinyl Collection',
                    style: Style.nameApp,
                  ),
                  onTap: () {},
                ),
              ),
              background: Container(
                height: double.infinity,
                width: double.infinity,
                child: const FittedBox(
                  fit: BoxFit.cover,
                  child: Image(
                    image: AssetImage('asset/image/main_screen_image.png'),
                  ),
                ),
              ),
            ),
            actions: [
              MenuButton(
                title: 'ВИНИЛ',
                padding: _padding,
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'АКУСТИКА',
                padding: _padding,
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'АКСЕССУАРЫ',
                padding: _padding,
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'НОВОСТИ',
                padding: _padding,
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'О НАС',
                padding: _padding,
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'КОНТАКТЫ',
                padding: _padding,
                textStyle: Style.mainButton,
              ),
            ],
          );
  }
}
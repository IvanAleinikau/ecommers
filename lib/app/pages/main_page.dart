import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/app/widgets/main_page_widgets/gesture_container.dart';
import 'package:ecommers/app/widgets/main_page_widgets/menu_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: ColorPalette.barColors,
            collapsedHeight: 70,
            pinned: true,
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const MenuButton(
                title: 'Vinyl Collection',
                padding: EdgeInsets.zero,
                textStyle: Style.nameApp,
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
            actions: const [
              MenuButton(
                title: 'ВИНИЛ',
                padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'АКУСТИКА',
                padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'АКСЕССУАРЫ',
                padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'НОВОСТИ',
                padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'О НАС',
                padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
                textStyle: Style.mainButton,
              ),
              MenuButton(
                title: 'КОНТАКТЫ',
                padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
                textStyle: Style.mainButton,
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  children: const [
                    GestureContainer(
                      image: 'asset/image/vinyl_storage.jpg',
                      name: 'Виниловые пластинки',
                    ),
                    GestureContainer(
                      image: 'asset/image/akystic.jpg',
                      name: 'Акустика',
                    ),
                    GestureContainer(
                      image: 'asset/image/yhod.jpg',
                      name: 'Аксессуары и уход за винилом',
                    ),
                  ],
                ),
                Row(
                  children: const [
                    GestureContainer(
                      image: 'asset/image/proig.jpg',
                      name: 'Проигрыватели винила',
                    ),
                    GestureContainer(
                      image: 'asset/image/oboryd.jpg',
                      name: 'Оборудование',
                    ),
                    GestureContainer(
                      image: 'asset/image/naysh.jpg',
                      name: 'Наушники',
                    ),
                  ],
                ),
                Container(
                  height: 1000,
                ),
                const AppBottomBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

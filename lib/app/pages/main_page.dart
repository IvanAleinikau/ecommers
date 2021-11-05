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
  final _padding =  const EdgeInsets.fromLTRB(5, 25, 25, 0);

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
                padding:_padding,
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
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'О нас',
                              style: Style.info,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Text(
                                'Vinyl Collection является официальным представителем бренда Crosley, Audio-Technica, Pro-Ject, Yamaha, Klipsch, Jamo, Dali, Marantz, Denon, Thorens в Беларуси.',
                                style: Style.info2,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Text(
                                'Большой выбор проигрывателей винила, пластинок и предметов интерьера.',
                                style: Style.info2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('asset/image/proig2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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

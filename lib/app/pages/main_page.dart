import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/app/widgets/main_page_widgets/about_us.dart';
import 'package:ecommers/app/widgets/main_page_widgets/catalog_element.dart';
import 'package:ecommers/app/widgets/main_page_widgets/gesture_container.dart';
import 'package:ecommers/app/widgets/main_page_widgets/menu_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _padding = const EdgeInsets.fromLTRB(5, 25, 25, 0);

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
                const AboutUs(),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: const Center(
                    child: Text(
                      'Каталог',
                      style: Style.catalog,
                    ),
                  ),
                ),
                CatalogElement(
                  image: 'asset/image/proig3.jpg',
                  title: 'Проигрыватели винила',
                  subtitle:
                      'В проигрывателях винила мы ценим звук и стиль. Мы уверены что виниловый проигрыватель это отдельная часть интерьера, а не просто плеер. Откройте для себя новое увлечение или подарите вторую жизнь старой коллекции винила. Выбирайте из палитры цветов и форм на ваш вкус.',
                  color: Colors.lime.shade50,
                ),
                CatalogElement(
                  image: 'asset/image/vinyl_storage.jpg',
                  title: 'Виниловые пластинки',
                  subtitle:
                      'Новые оригинальные пластинки по приятным ценам. Наша цель - удовольствие клиентов, поэтому мы продаем не просто музыку, а музыкальное удовольствие. С радостью поможем найти вам редкий винил!',
                  color: Colors.amber.shade300,
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

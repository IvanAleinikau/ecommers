import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/app_bar.dart';
import 'package:ecommers/app/widgets/bottom_bar.dart';
import 'package:ecommers/app/widgets/main_page_widgets/about_us.dart';
import 'package:ecommers/app/widgets/main_page_widgets/brands.dart';
import 'package:ecommers/app/widgets/main_page_widgets/catalog_element.dart';
import 'package:ecommers/app/widgets/main_page_widgets/consultation.dart';
import 'package:ecommers/app/widgets/main_page_widgets/gesture_container.dart';
import 'package:ecommers/app/widgets/main_page_widgets/section_name.dart';
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
          const MyAppBar(
            page: Pages.main,
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
                const SectionName(
                  name: 'Каталог',
                  style: Style.catalog,
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
                CatalogElement(
                  image: 'asset/image/portav.jpg',
                  title: 'Портативная акустика',
                  subtitle:
                      'Широкий выбор акустики от Vinyl Collection. Выбирайте Bluetooth колонку для своего проигрывателя и получайте в два раза больше виниловой мощности!',
                  color: Colors.red.shade50,
                ),
                const CatalogElement(
                  image: 'asset/image/yhod2.jpg',
                  title: 'Аксессуары и уход',
                  subtitle:
                      'Виниловый проигрыватель требует не меньше внимания чем любой музыкальный инструмент. В Vinyl Collection вы найдете сменные иглы и новые картриджи для вашего аналогового любимца. А также антистатические щетки и моющие средства для ухода за пластинками.',
                  color: Colors.white70,
                ),
                const Consultation(),
                Brands(),
                const AppBottomBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

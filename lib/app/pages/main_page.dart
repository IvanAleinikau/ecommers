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
import 'package:ecommers/core/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

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
                  children: [
                    GestureContainer(
                      image: 'asset/image/vinyl_storage.jpg',
                      name: 'Виниловые пластинки',
                      onTap: () => context.router.navigate(const VinylRoute()),
                    ),
                    GestureContainer(
                      image: 'asset/image/akystic.jpg',
                      name: 'Акустика',
                      onTap: () => context.router.navigate(const AcousticsRoute()),
                    ),
                    GestureContainer(
                      image: 'asset/image/yhod.jpg',
                      name: 'Аксессуары и уход за винилом',
                      onTap: () => context.router.navigate(const AccessoriesRoute()),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureContainer(
                      image: 'asset/image/proig.jpg',
                      name: 'Проигрыватели винила',
                      onTap: () => context.router.navigate(const AcousticsRoute()),
                    ),
                    GestureContainer(
                      image: 'asset/image/oboryd.jpg',
                      name: 'Оборудование',
                      onTap: () => context.router.navigate(const AcousticsRoute()),
                    ),
                    GestureContainer(
                      image: 'asset/image/naysh.jpg',
                      name: 'Наушники',
                      onTap: () => context.router.navigate(const AccessoriesRoute()),
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
                  onTap: () => context.router.navigate(const AcousticsRoute()),
                ),
                CatalogElement(
                  image: 'asset/image/vinyl_storage.jpg',
                  title: 'Виниловые пластинки',
                  subtitle:
                      'Новые оригинальные пластинки по приятным ценам. Наша цель - удовольствие клиентов, поэтому мы продаем не просто музыку, а музыкальное удовольствие. С радостью поможем найти вам редкий винил!',
                  color: Colors.amber.shade300,
                  onTap: () => context.router.navigate(const VinylRoute()),
                ),
                CatalogElement(
                  image: 'asset/image/portav.jpg',
                  title: 'Портативная акустика',
                  subtitle:
                      'Широкий выбор акустики от Vinyl Collection. Выбирайте Bluetooth колонку для своего проигрывателя и получайте в два раза больше виниловой мощности!',
                  color: Colors.red.shade50,
                  onTap: () => context.router.navigate(const AcousticsRoute()),
                ),
                CatalogElement(
                  image: 'asset/image/yhod2.jpg',
                  title: 'Аксессуары и уход',
                  subtitle:
                      'Виниловый проигрыватель требует не меньше внимания чем любой музыкальный инструмент. В Vinyl Collection вы найдете сменные иглы и новые картриджи для вашего аналогового любимца. А также антистатические щетки и моющие средства для ухода за пластинками.',
                  color: Colors.white70,
                  onTap: () => context.router.navigate(const AccessoriesRoute()),
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

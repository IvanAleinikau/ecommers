import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/common/enums/pages.dart';
import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/main_page_widgets/menu_button.dart';
import 'package:ecommers/core/blocs/login_bloc/login_cubit.dart';
import 'package:ecommers/core/blocs/login_bloc/login_state.dart';
import 'package:ecommers/core/router/router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppBar extends StatefulWidget {
  final Pages page;

  const MyAppBar({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  final _padding = const EdgeInsets.fromLTRB(5, 25, 25, 0);
  late User? _user;
  late LoginCubit _cubit;

  @override
  void initState() {
    _user = FirebaseAuth.instance.currentUser;
    _cubit = LoginCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorPalette.barColors,
      collapsedHeight: 70,
      pinned: true,
      expandedHeight: 400.0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            child: const Text(
              'Vinyl Collection',
              style: Style.nameApp,
            ),
            onTap: () {
              context.router.navigate(const MainRoute());
            },
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
          textStyle: widget.page == Pages.vinyl ? Style.mainButtonActive : Style.mainButton,
          onTap: () => context.router.navigate(const VinylRoute()),
        ),
        MenuButton(
          title: 'АКУСТИКА',
          padding: _padding,
          textStyle: widget.page == Pages.acoustics ? Style.mainButtonActive : Style.mainButton,
          onTap: () => context.router.navigate(const AcousticsRoute()),
        ),
        MenuButton(
          title: 'АКСЕССУАРЫ',
          padding: _padding,
          textStyle: widget.page == Pages.accessories ? Style.mainButtonActive : Style.mainButton,
          onTap: () => context.router.navigate(const AccessoriesRoute()),
        ),
        MenuButton(
          title: 'НОВОСТИ',
          padding: _padding,
          textStyle: widget.page == Pages.news ? Style.mainButtonActive : Style.mainButton,
          onTap: () => context.router.navigate(const NewsRoute()),
        ),
        MenuButton(
          title: 'О НАС',
          padding: _padding,
          textStyle: widget.page == Pages.aboutUs ? Style.mainButtonActive : Style.mainButton,
          onTap: () => context.router.navigate(const AboutUsRoute()),
        ),
        MenuButton(
          title: 'КОНТАКТЫ',
          padding: _padding,
          textStyle: widget.page == Pages.contacts ? Style.mainButtonActive : Style.mainButton,
          onTap: () => context.router.navigate(const ContactsRoute()),
        ),
        BlocConsumer<LoginCubit, LoginState>(
          bloc: _cubit,
          listener: (BuildContext context, state) {
            state.maybeWhen(
              singOut: () {
                context.router.navigate(const LoginRoute());
              },
              orElse: () {},
            );
          },
          builder: (BuildContext context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 15, right: 20),
              child: InkWell(
                onTap: () => _accountMenu(context),
                borderRadius: BorderRadius.circular(20),
                child: const Icon(
                  Icons.account_circle_rounded,
                  size: 30,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  void _accountMenu(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black12,
      builder: (BuildContext context) {
        return SimpleDialog(
          elevation: 5,
          alignment: const Alignment(1, -0.85),
          children: [
            SizedBox(
              height: 100,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: _CircleNeckline(),
                    child: Container(
                      height: 70,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: const Alignment(0, 0.9),
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 58,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0, -0.7),
                    child: Text(
                      'Имя',
                      style: Style.montserrat16w400,
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.95, 0.15),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.create_outlined,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '${_user?.email}',
                style: Style.montserrat14w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => _cubit.singOut(),
                  child: const Text(
                    'Выйти',
                    style: Style.montserrat14w400,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _CircleNeckline extends CustomClipper<Path> {
  final double radius = 30;

  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width / 2 - radius, size.height);
    path.arcToPoint(
      Offset(size.width / 2, size.height - radius),
      radius: Radius.circular(radius),
    );
    path.arcToPoint(
      Offset(size.width / 2 + radius, size.height),
      radius: Radius.circular(radius),
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(_CircleNeckline oldClipper) => oldClipper != this;
}

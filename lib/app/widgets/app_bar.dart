import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/pages/pages.dart';
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
    // TODO: implement initState
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
          textStyle: Style.mainButton,
          onTap: () => context.router.pushNamed('/contacts'),
        ),
        MenuButton(
          title: 'АКУСТИКА',
          padding: _padding,
          textStyle: Style.mainButton,
          onTap: () => context.router.pushNamed('/contacts'),
        ),
        MenuButton(
          title: 'АКСЕССУАРЫ',
          padding: _padding,
          textStyle: Style.mainButton,
          onTap: () => context.router.pushNamed('/contacts'),
        ),
        MenuButton(
          title: 'НОВОСТИ',
          padding: _padding,
          textStyle: Style.mainButton,
          onTap: () => context.router.pushNamed('/contacts'),
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
                  size: 40,
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
            Text('${_user?.email}'),
            TextButton(
              onPressed: () => _cubit.singOut(),
              child: Text('Выйти'),
            ),
          ],
        );
      },
    );
  }
}

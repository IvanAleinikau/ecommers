import 'package:ecommers/app/pages/admin_panel/admin_panel_dashboard.dart';
import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/widgets/admin_panel_page_widgets/admin_panel_app_bar.dart';
import 'package:ecommers/app/widgets/admin_panel_page_widgets/admin_panel_button.dart';
import 'package:ecommers/app/widgets/admin_panel_page_widgets/admin_panel_logo.dart';
import 'package:ecommers/app/widgets/admin_panel_page_widgets/admin_panel_separator.dart';
import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_bloc.dart';
import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_event.dart';
import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelPage extends StatefulWidget {
  const AdminPanelPage({Key? key}) : super(key: key);

  @override
  _AdminPanelPageState createState() => _AdminPanelPageState();
}

class _AdminPanelPageState extends State<AdminPanelPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdminPanelBloc>(
      create: (context) => AdminPanelBloc(),
      child: BlocBuilder<AdminPanelBloc, AdminPanelState>(
        builder: (context, state) {
          final AdminPanelBloc _bloc = BlocProvider.of<AdminPanelBloc>(context);
          final double width = MediaQuery.of(context).size.width/5;
          return Scaffold(
            backgroundColor: ColorPalette.adminPanelBackground,
            body: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AdminPanelLogo(),
                        AdminPanelButton(
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                          buttonName: 'Dashboard',
                          onPressed: () => _bloc.add(ShowDashboard()),
                          icon: CupertinoIcons.square_grid_2x2_fill,
                          width: width,
                        ),
                        AdminPanelButton(
                          padding: const EdgeInsets.fromLTRB(10, 7, 10, 0),
                          buttonName: 'Product',
                          onPressed: () => print('тык'),
                          icon: CupertinoIcons.rectangle_stack_fill,
                          width: width,
                        ),
                        AdminPanelButton(
                          padding: const EdgeInsets.fromLTRB(10, 7, 10, 0),
                          buttonName: 'Users',
                          onPressed: () => print('тык'),
                          icon: Icons.account_circle,
                          width: width,
                        ),
                        AdminPanelButton(
                          padding: const EdgeInsets.fromLTRB(10, 7, 10, 0),
                          buttonName: 'Statistics',
                          onPressed: () => print('тык'),
                          icon: Icons.signal_cellular_alt_sharp,
                          width: width,
                        ),
                        AdminPanelButton(
                          padding: const EdgeInsets.fromLTRB(10, 7, 10, 0),
                          buttonName: 'Requests',
                          onPressed: () => print('тык'),
                          icon: Icons.chat_outlined,
                          width: width,
                        ),
                        const AdminPanelSeparator(),
                        AdminPanelButton(
                          padding: const EdgeInsets.fromLTRB(15, 7, 10, 0),
                          buttonName: 'Settings',
                          onPressed: () => print('тык'),
                          icon: Icons.settings,
                          width: width,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      const AdminPanelAppBar(),
                      state.when(
                        initState: () {
                          _bloc.add(ShowDashboard());
                          return Container(
                            height: MediaQuery.of(context).size.height - 56.2,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.lightBlue.shade700,
                              ),
                            ),
                          );
                        },
                        displayingTheDashboard: () {
                          return const AdminPanelDashboard();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/admin_panel_page_widgets/admin_panel_button.dart';
import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_bloc.dart';
import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelDropdownButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final String buttonName;
  final void Function()? onPressed;
  final IconData? icon;
  final double width;
  final List<AdminPanelButton> buttons;

  const AdminPanelDropdownButton({
    Key? key,
    required this.padding,
    required this.buttonName,
    required this.onPressed,
    required this.icon,
    required this.width,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminPanelBloc, AdminPanelState>(
      builder: (context, state) {
        return Container(
          padding: padding,
          child: Column(
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  fixedSize: Size(width, 45),
                  alignment: Alignment.centerLeft,
                  elevation: 0,
                ),
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: Colors.grey.shade700,
                ),
                label: Row(
                  children: [
                    Expanded(
                      flex: 12,
                      child: Text(
                        buttonName,
                        style: Style.adminPanelButton,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: state.maybeWhen(
                        displayingTheProducts: () {
                          return Container();
                        },
                        orElse: () {
                          return Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey.shade700,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              state.maybeWhen(
                displayingTheProducts: () {
                  return Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: buttons,
                    ),
                  );
                },
                orElse: () {
                  return Container();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

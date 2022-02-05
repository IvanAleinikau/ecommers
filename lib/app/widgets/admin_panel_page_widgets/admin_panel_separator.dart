import 'package:ecommers/app/theme/color_palette.dart';
import 'package:flutter/material.dart';

class AdminPanelSeparator extends StatelessWidget {
  const AdminPanelSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      color: ColorPalette.adminPanelBackground,
      margin: const EdgeInsets.only(top: 10),
    );
  }
}

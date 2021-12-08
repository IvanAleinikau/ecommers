import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'admin_panel_separator.dart';

class AdminPanelLogo extends StatelessWidget {
  const AdminPanelLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Stack(
                children: [
                  Icon(
                    CupertinoIcons.app_fill,
                    size: 35,
                    color: Colors.lightBlue.shade700,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(7.5, 7.5, 0, 0),
                    child: const Icon(
                      CupertinoIcons.lock,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Column(
                children: [
                  Text(
                    'Admin',
                    style: Style.adminPanelTitle,
                  ),
                  Text(
                    'ecommerce',
                    style: Style.adminPanelSubtitle,
                  ),
                ],
              ),
            ),
          ],
        ),
        const AdminPanelSeparator(),
      ],
    );
  }
}

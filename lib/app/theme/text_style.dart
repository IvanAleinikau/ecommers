import 'package:ecommers/app/theme/color_palette.dart';
import 'package:flutter/material.dart';

class Style {
  static const nameApp = TextStyle(
    fontSize: 30,
    fontFamily: 'Montserrat',
  );

  static const mainButton = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
  );

  static const nameProduct = TextStyle(
    fontSize: 22,
    fontFamily: 'Montserrat',
    color: ColorPalette.bottomNames,
    fontWeight: FontWeight.bold,
  );

  static const nameBottomBar = TextStyle(
    color: ColorPalette.bottomNames,
    fontSize: 16,
    fontFamily: 'Montserrat',
  );

  static const bottomBarElement = TextStyle(
    color: ColorPalette.bottomNames,
    fontSize: 14,
    fontFamily: 'Montserrat',
  );
}

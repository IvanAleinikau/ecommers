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

  static TextStyle mainButtonActive = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    color: Colors.grey.shade600,
  );

  static const nameProduct = TextStyle(
    fontSize: 22,
    fontFamily: 'Montserrat',
    color: ColorPalette.bottomNames,
    fontWeight: FontWeight.bold,
  );

  static const info = TextStyle(
    fontSize: 30,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
  );

  static const info2 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
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

  static const catalog = TextStyle(
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
  );

  static const consultation = TextStyle(
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: Colors.white
  );

  static const catalogName = TextStyle(
    fontSize: 22,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
  );

  static const catalogInfo = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
  );

  static const catalogButton = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
  );

  static const consultationButton = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
  );

  static const consultationButton2 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const contacts = TextStyle(
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
  );
}

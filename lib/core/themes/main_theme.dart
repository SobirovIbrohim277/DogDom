import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/colors.dart';

class MainTheme {
  static ThemeData light = ThemeData(
    fontFamily: 'WorkSans',
    canvasColor: MyColors.dialog_2,
    primaryColor: MyColors.orange,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        primary: MyColors.red,
      ),
    ),
  );
}

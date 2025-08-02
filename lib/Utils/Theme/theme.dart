import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/appbar_theme.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/checkbox_theme.dart';
import 'package:flutter/material.dart';

class UAppTheme {
  UAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    appBarTheme: UAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: UColors.light,
    checkboxTheme:UCheckboxTheme.lightCheckboxTheme ,
    bottomSheetTheme: ,
    elevatedButtonTheme:  ,
    outlinedButtonTheme: ,
    inputDecorationTheme: ,
    primaryColor: UColors.primary,
    disabledColor: UColors.grey,
    textTheme: ,
    chipTheme: ,

  );
}

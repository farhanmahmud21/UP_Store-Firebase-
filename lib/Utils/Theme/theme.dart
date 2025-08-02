import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/appbar_theme.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/bottomsheet_theme.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/checkbox_theme.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/chip_theme.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/elevated_button_theme.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/outlined_button_theme.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/text_field_theme.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/text_theme.dart';
import 'package:flutter/material.dart';

class UAppTheme {
  UAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    appBarTheme: UAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: UColors.light,
    checkboxTheme: UCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: UBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: UElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: UOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: UTextFormFieldTheme.lightInputDecorationTheme,
    primaryColor: UColors.primary,
    disabledColor: UColors.grey,
    textTheme: UTextTheme.lightTextTheme,
    chipTheme: UChipTheme.lightChipTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    appBarTheme: UAppBarTheme.darkAppBarTheme,
    scaffoldBackgroundColor: UColors.dark,
    checkboxTheme: UCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: UBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: UElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: UOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: UTextFormFieldTheme.darkInputDecorationTheme,
    primaryColor: UColors.primary,
    disabledColor: UColors.grey,
    textTheme: UTextTheme.darkTextTheme,
    chipTheme: UChipTheme.darkChipTheme,
  );
}

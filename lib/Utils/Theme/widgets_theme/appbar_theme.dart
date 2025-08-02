import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:flutter/material.dart';

class UAppBarTheme {
  UAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: UColors.black, size: USizes.iconMd),
    actionsIconTheme: IconThemeData(color: UColors.black, size: USizes.iconMd),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: UColors.black,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    scrolledUnderElevation: 0,
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: UColors.white, size: USizes.iconMd),
    actionsIconTheme: IconThemeData(color: UColors.white, size: USizes.iconMd),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: UColors.white,
    ),
  );
}

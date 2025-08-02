import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:flutter/material.dart';

class UCheckboxTheme {
  UCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(USizes.xs),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return UColors.white;
      } else {
        return UColors.black;
      }
    }),
  );
}

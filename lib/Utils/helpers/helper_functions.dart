import 'package:flutter/material.dart';

class UhelperFunctions {
  UhelperFunctions._();

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}

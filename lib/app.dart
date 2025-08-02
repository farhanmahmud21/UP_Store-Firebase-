import 'package:e_commerce/Utils/Theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}

import 'package:flutter/material.dart';

class MyTheme {
  static const Color primary = Color.fromRGBO(240, 162, 19, 1);

  static final ThemeData myTheme = ThemeData(
      primaryColor: primary,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 10,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary));
}
import 'package:flutter/material.dart'
    show Color, Colors, ThemeData, AppBarTheme, TextButtonThemeData, TextButton;

class AppTheme {
  static final Color colorPrimary = Colors.teal.shade300;
  static final Color colorButton = Colors.redAccent.shade200;

  static ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: colorPrimary,
    // AppBar Theme
    appBarTheme: AppBarTheme(
      color: colorPrimary,
      elevation: 0,
      centerTitle: true,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: colorButton,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: colorPrimary,
    // AppBar Theme
    appBarTheme: AppBarTheme(
      color: colorPrimary,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}

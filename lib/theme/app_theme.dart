import 'package:flutter/material.dart'
    show
        Color,
        Colors,
        ThemeData,
        AppBarTheme,
        TextButtonThemeData,
        TextButton,
        FloatingActionButtonThemeData,
        ElevatedButtonThemeData,
        ElevatedButton,
        StadiumBorder,
        InputDecorationTheme,
        TextStyle,
        OutlineInputBorder,
        BorderSide,
        BorderRadius,
        Radius;

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
    //FloatingActionButtons
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorPrimary,
      elevation: 3,
    ),
    // ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: colorPrimary,
        shape: const StadiumBorder(),
      ),
    ),
    // InputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorPrimary),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: colorPrimary,
      ),
      suffixIconColor: Colors.teal[900],
      iconColor: Colors.teal[900],
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorPrimary),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
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

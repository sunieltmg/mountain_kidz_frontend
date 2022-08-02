import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
    primaryTextTheme: TextTheme(
      headlineLarge: TextStyle(
        color: Colors.purple.shade200,
        letterSpacing: 0.5,
        wordSpacing: 1,
        fontSize: 20.0,
        height: 1.5,
      ),
      titleLarge: const TextStyle(
        color: Colors.white,
        letterSpacing: 1,
        wordSpacing: 1,
        fontSize: 18.0,
        height: 1.5,
      ),
      labelLarge: TextStyle(
        color: Colors.white.withOpacity(0.5),
        letterSpacing: 0.8,
        wordSpacing: 0.5,
        fontSize: 15.0,
        height: 1.5,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: const TextStyle(
        color: Colors.grey,
        letterSpacing: 0.5,
        wordSpacing: 0.5,
        fontSize: 14.0,
        height: 1.5,
        fontWeight: FontWeight.w200,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade900,
      centerTitle: true,
      elevation: 0,
      foregroundColor: Colors.white,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        letterSpacing: 1,
        wordSpacing: 1,
        fontSize: 18.0,
        height: 1.5,
      ),
    ),
    colorScheme: const ColorScheme.dark().copyWith(secondary: Colors.white),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light().copyWith(secondary: Colors.black),
    primaryColor: Colors.white,
    primaryTextTheme: TextTheme(
      headlineLarge: TextStyle(
        color: Colors.green.shade800,
        letterSpacing: 0.5,
        fontSize: 18.0,
        height: 1.3,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: const TextStyle(
        color: Colors.black,
        letterSpacing: 1,
        wordSpacing: 1,
        fontSize: 18.0,
        height: 1.5,
      ),
      labelLarge: const TextStyle(
        color: Colors.black87,
        letterSpacing: 0.8,
        wordSpacing: 0.5,
        fontSize: 15.0,
        height: 1.5,
        fontWeight: FontWeight.w300,
      ),
      labelMedium: const TextStyle(
        color: Colors.black87,
        letterSpacing: 0.5,
        wordSpacing: 0.5,
        fontSize: 14.0,
        height: 1.5,
        fontWeight: FontWeight.w200,
      ),
    ),
    iconTheme: IconThemeData(color: Colors.green.shade600, opacity: 0.8),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      foregroundColor: Colors.black,
      titleTextStyle: TextStyle(
        color: Colors.black,
        letterSpacing: 1,
        wordSpacing: 1,
        fontSize: 18.0,
        height: 1.5,
      ),
    ),
  );
}

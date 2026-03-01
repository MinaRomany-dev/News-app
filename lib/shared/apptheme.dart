import 'package:flutter/material.dart';

class Apptheme {
  static const Color primarycolor = Color(0xFF39A552);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF4F5A69);
  static const Color black = Color(0xFF303030);

  // Dark colors
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkGrey = Color(0xFFB0B0B0);
// 
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: primarycolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
          backgroundColor: primarycolor,
          foregroundColor: Colors.transparent,
          centerTitle: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
          titleSmall: TextStyle(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400)));

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primarycolor,
    scaffoldBackgroundColor: darkBackground,
  );
}

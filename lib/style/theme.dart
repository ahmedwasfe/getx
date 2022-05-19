import 'package:flutter/material.dart';

class AppTheme{

  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.black54),
  );

  static ThemeData customLightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(color: Colors.redAccent),
  );
}
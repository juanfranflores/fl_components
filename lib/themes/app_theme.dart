import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        centerTitle: true,
        elevation: 0,
      ));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      centerTitle: true,
      elevation: 0,
    ),
    // scaffoldBackgroundColor:,
  );
}

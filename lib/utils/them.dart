import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._(); //This makes the class private

  static ThemeData lightTheme = ThemeData(brightness: Brightness.light);
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}

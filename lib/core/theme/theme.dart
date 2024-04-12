import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 3),
      borderRadius: BorderRadius.circular(10));
  static final darkThemeMode = ThemeData.dark().copyWith(
    // useMaterial3: false,
    // colorScheme: ColorScheme.dark(primary: Colors.white),
      scaffoldBackgroundColor: AppPallete.backgroundColor,
      appBarTheme: const AppBarTheme(backgroundColor: AppPallete.backgroundColor),
      inputDecorationTheme: InputDecorationTheme(
          border: _border(),
          enabledBorder: _border(),
          focusedBorder: _border(AppPallete.gradient2)));
}

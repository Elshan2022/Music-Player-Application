import 'package:flutter/material.dart';
import 'package:flutter_music_player/components/app_colors.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryDark,
      elevation: 0,
      centerTitle: true,
    ),
  );
}

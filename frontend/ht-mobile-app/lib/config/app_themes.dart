import 'package:flutter/material.dart';
import 'package:ht/config/app_sizes.dart';
import 'package:ht/config/colors.dart';

class AppTheme {
  AppTheme._internal();

  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      enableFeedback: false,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      elevation: 10,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primary),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: AppSizes.xLargeHeightDimens,
            vertical: AppSizes.largeHeightDimens,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.mediumRadius),
          ),
        ),
      ),
    ),
  );

  static final ThemeData dark = ThemeData.light().copyWith(
    brightness: Brightness.dark,
  );
}

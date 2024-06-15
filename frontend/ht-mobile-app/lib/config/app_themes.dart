import 'package:flutter/material.dart';
import 'package:tfc/config/app_sizes.dart';
import 'package:tfc/config/colors.dart';

class AppTheme {
  AppTheme._internal();

  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.red,
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

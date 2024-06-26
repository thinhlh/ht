import 'package:flutter/material.dart';
import 'package:ht/config/colors.dart';
import 'package:ht/config/app_sizes.dart';

class AppStyles {
  AppStyles._internal();

  /// TODO define all widgets style of the application here

  static final TextStyle titleLarge = TextStyle(
    fontSize: AppSizes.largeText,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.bold,
  );

  static final TextStyle titleMedium = TextStyle(
    fontSize: AppSizes.mediumText,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.bold,
  );

  static final TextStyle titleSmall = TextStyle(
    fontSize: AppSizes.mediumText,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.bold,
  );

  static final TextStyle bodyLarge = TextStyle(
    fontSize: AppSizes.mediumText,
    color: AppColors.neutral.shade900,
  );
  static final TextStyle bodyMedium = TextStyle(
    fontSize: AppSizes.mediumText,
    color: AppColors.neutral.shade900,
  );
  static final TextStyle bodySmall = TextStyle(
    fontSize: AppSizes.smallText,
    color: AppColors.neutral.shade900,
  );

  static final ButtonStyle buttonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    backgroundColor: MaterialStateProperty.all(AppColors.primary),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppSizes.mediumButtonBorderRadius,
        ),
      ),
    ),
    padding: MaterialStateProperty.all(const EdgeInsets.all(24)),
    overlayColor: MaterialStateProperty.all(Colors.transparent),
    textStyle: MaterialStateProperty.all(
      TextStyle(
        fontSize: ThemeData.light().textTheme.titleLarge?.fontSize,
        color: Colors.red,
        fontWeight: AppStyles.bold,
      ),
    ),
  );

  static const FontWeight bold = FontWeight.bold;
  static const FontWeight extraBold = FontWeight.w900;
}

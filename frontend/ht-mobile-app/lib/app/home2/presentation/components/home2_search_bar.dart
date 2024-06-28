import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ht/app/common/presentation/widgets/dialog/dialog_type.dart';
import 'package:ht/app/common/presentation/widgets/glassmorphism/glassmorphism.dart';
import 'package:ht/config/app_sizes.dart';
import 'package:ht/config/colors.dart';

class Home2SearchBar extends StatelessWidget {
  const Home2SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionalTranslation(
      translation: const Offset(0, -0.5),
      child: GlassMorphism(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.mediumRadius),
        child: SizedBox(
          width: 0.9.sw,
          child: PhysicalModel(
            // color: Colors.white,
            color: Colors.transparent,
            elevation: AppSizes.largeElevation,
            borderRadius: BorderRadius.circular(
              AppSizes.mediumButtonBorderRadius,
            ),
            child: TextField(
              maxLines: 1,
              cursorColor: AppColors.secondary,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: AppSizes.xLargeHeightDimens,
                  horizontal: AppSizes.xLargeHeightDimens,
                ),
                hintText: "Tell me sth",
                fillColor: Colors.white,
                suffixIcon: const Icon(
                  Icons.send_rounded,
                  color: AppColors.secondary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tfc/app/home2/presentation/views/home2_provider.dart';
import 'package:tfc/base/presentation/pages/p_stateless.dart';
import 'package:tfc/config/app_sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tfc/config/colors.dart';
import 'package:tfc/config/styles.dart';

class Home2Page extends PageStateless<Home2Provider> {
  const Home2Page({super.key});

  @override
  Widget buildPage(BuildContext context, Home2Provider provider) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              child: Container(
                color: AppColors.primaryLight,
                child: Center(
                  child: Text(
                    'Banner',
                    style: AppStyles.titleLarge,
                  ),
                ),
              ),
            ),
          ),
          FractionalTranslation(
            translation: const Offset(0, -0.5),
            child: SizedBox(
              width: 0.9.sw,
              child: PhysicalModel(
                color: Colors.white,
                elevation: AppSizes.largeElevation,
                borderRadius: BorderRadius.circular(
                  AppSizes.buttonBorderRadius,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: AppSizes.extraLargeHeightDimens,
                        horizontal: AppSizes.largeWidthDimens,
                      ),
                      hintText: "Tell me sth",
                      fillColor: Colors.white,
                      suffixIcon: const Icon(
                        Icons.send_rounded,
                        color: AppColors.primary,
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.largeWidthDimens,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: AppSizes.largeHeightDimens,
                crossAxisSpacing: AppSizes.largeWidthDimens,
              ),
              itemCount: 6,
              itemBuilder: (_, idx) => PhysicalModel(
                color: AppColors.secondaryLight.withAlpha(idx * 40 + 20),
                borderRadius: BorderRadius.circular(
                  AppSizes.buttonBorderRadius,
                ),
                child: SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: Center(
                    child: Text(
                      "Menu $idx",
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

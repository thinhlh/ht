import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tfc/app/home2/domain/entity/menu.dart' as m;
import 'package:tfc/config/app_sizes.dart';
import 'package:tfc/config/colors.dart';
import 'package:tfc/config/styles.dart';

class Home2Menu extends StatelessWidget {
  Home2Menu({super.key});

  final List<m.MenuItem> menu = [
    m.MenuItem("Message", () => {}),
    m.MenuItem("Notifications", () => {}),
    m.MenuItem("Reminders", () => {}),
    m.MenuItem("Gallery", () => {}),
    m.MenuItem("Setting", () => {}),
    m.MenuItem("Tracking", () => {}),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.xLargeHeightDimens,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: AppSizes.largeHeightDimens,
        crossAxisSpacing: AppSizes.xLargeHeightDimens,
      ),
      itemCount: 6,
      itemBuilder: (_, idx) => GestureDetector(
        onTap: menu[idx].onTap,
        child: PhysicalModel(
          color: AppColors.secondaryLight.withAlpha(idx * 40 + 20),
          borderRadius: BorderRadius.circular(
            AppSizes.buttonBorderRadius,
          ),
          child: SizedBox(
            width: 20.w,
            height: 20.h,
            child: Center(
              child: Text(
                menu[idx].name,
                style: AppStyles.bodySmall.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

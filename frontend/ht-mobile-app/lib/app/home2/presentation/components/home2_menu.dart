import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tfc/app/home2/domain/entity/menu.dart' as m;
import 'package:tfc/config/app_sizes.dart';
import 'package:tfc/config/colors.dart';
import 'package:tfc/config/styles.dart';

class Home2Menu extends StatelessWidget {
  Home2Menu({super.key});

  final List<m.MenuItem> menu = [
    m.MenuItem("Message", Icons.message_outlined, () => {}),
    m.MenuItem("Notifications", Icons.notifications_outlined, () => {}),
    m.MenuItem("Reminders", Icons.alarm_outlined, () => {}),
    m.MenuItem("Gallery", Icons.image_outlined, () => {}),
    m.MenuItem("Setting", Icons.settings_outlined, () => {}),
    m.MenuItem("Tracking", Icons.location_on_outlined, () => {}),
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
          color: AppColors.backgroundNeutral,
          elevation: 1,
          borderRadius: BorderRadius.circular(
            AppSizes.smallButtonBorderRadius,
          ),
          child: SizedBox(
            width: 20.w,
            height: 20.h,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    menu[idx].icon,
                    color: AppColors.primary,
                  ),
                  SizedBox(
                    height: AppSizes.mediumHeightDimens,
                  ),
                  Center(
                    child: Text(
                      menu[idx].name,
                      style: AppStyles.bodySmall.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

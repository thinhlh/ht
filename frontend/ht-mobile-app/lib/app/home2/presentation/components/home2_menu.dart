import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ht/app/home2/domain/entity/menu.dart' as m;
import 'package:ht/config/app_sizes.dart';
import 'package:ht/config/colors.dart';
import 'package:ht/config/styles.dart';

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
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
        mainAxisSpacing: AppSizes.mediumHeightDimens,
        crossAxisSpacing: AppSizes.mediumWidthDimens,
      ),
      itemBuilder: (_, idx) => GestureDetector(
        onTap: menu[idx].onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PhysicalModel(
                  color: AppColors.backgroundNeutral,
                  elevation: AppSizes.xSmallElevation,
                  borderRadius: BorderRadius.circular(
                    AppSizes.mediumRadius,
                  ),
                  child: Icon(
                    menu[idx].icon,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppSizes.smallHeightDimens,
            ),
            Text(
              menu[idx].name,
              style: AppStyles.bodySmall.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      itemCount: menu.length,
    );
    //   return GridView.builder(
    //     physics: const NeverScrollableScrollPhysics(),
    //     padding: EdgeInsets.symmetric(
    //       horizontal: AppSizes.xLargeHeightDimens,
    //     ),
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 4,
    //       mainAxisSpacing: AppSizes.xxLargeHeightDimens,
    //       crossAxisSpacing: AppSizes.xLargeHeightDimens,
    //     ),
    //     itemCount: menu.length,
    //     itemBuilder: (_, idx) => GestureDetector(
    //       onTap: menu[idx].onTap,
    //       child: Column(
    //         children: [
    //           AspectRatio(
    //             aspectRatio: 1,
    //             child: PhysicalModel(
    //               color: AppColors.backgroundNeutral,
    //               borderRadius: BorderRadius.circular(
    //                 AppSizes.smallButtonBorderRadius,
    //               ),
    //               elevation: 1,
    //               child: Center(
    //                 child: Icon(
    //                   menu[idx].icon,
    //                   color: AppColors.primary,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           SizedBox(
    //             height: AppSizes.smallHeightDimens,
    //           ),
    //           Text(
    //             menu[idx].name,
    //             style: AppStyles.bodySmall.copyWith(
    //               fontWeight: FontWeight.w500,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
  }
}

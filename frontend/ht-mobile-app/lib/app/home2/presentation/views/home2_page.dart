import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ht/config/app_sizes.dart';
import 'package:provider/provider.dart';
import 'package:ht/app/home2/presentation/components/home2_banner.dart';
import 'package:ht/app/home2/presentation/components/home2_menu.dart';
import 'package:ht/app/home2/presentation/components/home2_search_bar.dart';
import 'package:ht/app/home2/presentation/views/home2_provider.dart';
import 'package:ht/base/presentation/pages/p_stateless.dart';
import 'package:ht/config/colors.dart';
import 'package:ht/config/styles.dart';
import 'package:ht/utils/extensions/context_extension.dart';

class Home2Page extends PageStateless<Home2Provider> {
  const Home2Page({super.key});

  @override
  Widget buildPage(BuildContext context, Home2Provider provider) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: context
            .select<Home2Provider, int>((provider) => provider.selectedPage),
        onTap: (value) => provider.selectedPage = value,
        enableFloatingNavBar: true,
        enablePaddingAnimation: true,
        splashBorderRadius: AppSizes.smallButtonBorderRadius,
        // backgroundColor: Colors.transparent,
        items: [
          CrystalNavigationBarItem(
            icon: Icons.home_outlined,
          ),
          CrystalNavigationBarItem(
            icon: Icons.message_outlined,
          ),
          CrystalNavigationBarItem(
            icon: Icons.settings_outlined,
          )
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: PhysicalModel(
      //   color: Colors.transparent,
      //   borderRadius: BorderRadius.circular(AppSizes.extraLargeRadius),
      //   child: NavigationBar(
      //     backgroundColor: Colors.transparent,
      //     selectedIndex: context.select<Home2Provider, int>(
      //       (value) => value.selectedPage,
      //     ),
      //     onDestinationSelected: (value) => provider.selectedPage = value,
      //     elevation: AppSizes.mediumElevation,
      //     destinations: [
      //       Icon(Icons.home_outlined),
      //       Icon(Icons.settings_outlined),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: Theme(
      //   data: context.theme.copyWith(
      //     splashColor: Colors.transparent,
      //     highlightColor: Colors.transparent,
      //   ),
      //   child: BottomNavigationBar(
      //     currentIndex: context.select<Home2Provider, int>(
      //       (value) => value.selectedPage,
      //     ),
      //     onTap: (value) => provider.selectedPage = value,
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home_outlined),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         backgroundColor: Colors.transparent,
      //         icon: Icon(Icons.settings_outlined),
      //         label: 'Setting',
      //       ),
      //     ],
      //   ),
      // ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            flex: 1,
            child: Home2Banner(),
          ),
          const Home2SearchBar(),
          Expanded(
            flex: 2,
            child: Home2Menu(),
          ),
        ],
      ),
    );
  }
}

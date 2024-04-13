import 'package:flutter/material.dart';
import 'package:tfc/app/home2/presentation/components/home2_menu.dart';
import 'package:tfc/app/home2/presentation/components/home2_search_bar.dart';
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
            flex: 2,
            child: ClipRRect(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.primaryLight,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/background.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Banner',
                    style: AppStyles.titleLarge,
                  ),
                ),
              ),
            ),
          ),
          const Home2SearchBar(),
          Expanded(
            child: Home2Menu(),
          ),
        ],
      ),
    );
  }
}

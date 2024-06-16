import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tfc/config/colors.dart';
import 'package:tfc/config/styles.dart';

class Home2Banner extends StatelessWidget {
  const Home2Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryLight,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background2.png',
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfc/app/home2/presentation/components/home2_banner.dart';
import 'package:tfc/app/home2/presentation/components/home2_menu.dart';
import 'package:tfc/app/home2/presentation/components/home2_search_bar.dart';
import 'package:tfc/app/home2/presentation/views/home2_provider.dart';
import 'package:tfc/base/presentation/pages/p_stateless.dart';
import 'package:tfc/config/colors.dart';
import 'package:tfc/config/styles.dart';

class Home2Page extends PageStateless<Home2Provider> {
  const Home2Page({super.key});

  @override
  Widget buildPage(BuildContext context, Home2Provider provider) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        currentIndex: context.select<Home2Provider, int>(
          (value) => value.selectedPage,
        ),
        onTap: (value) => provider.selectedPage = value,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Setting',
          ),
        ],
      ),
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

import 'package:coffee_shop/view/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/widgets/bottom_navigation_bar_page.dart';
import '../view_models/get_provider_app_controller.dart';
import 'cart_page.dart';
import 'details_page.dart';
import 'favourite_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    final selectedTab=getProvider.selectedTab;
    return Scaffold(
        body: PageView(
          controller: getProvider.pageController,
          onPageChanged: getProvider.onPageChanged, // Defined in GetProvider
          children:   getProvider.page,
        ),
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBarPage(
        selectedIndex:getProvider.selectedIndex,
        onItemTapped:(index,context){
          Provider.of<GetProvider>(context, listen: false).setPage(index);},

      ),
    );
  }
}
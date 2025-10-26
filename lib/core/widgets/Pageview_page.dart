import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bottom_navigation_bar_page.dart';
import '../../view_models/get_provider_app_controller.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    return Scaffold(
        body:
         PageView(
          controller: getProvider.pageController,
          onPageChanged: getProvider.onPageChanged, // Defined in GetProvider
          children:   getProvider.page,
        ),
      //-------------------------page change with bottom bar---------------------------------------------------------

      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBarPage(
        selectedIndex:getProvider.selectedIndex,
        onItemTapped:(index,context) {
          getProvider.setPage(index);
        }
      ),
    );
  }
}
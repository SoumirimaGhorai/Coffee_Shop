import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key,  required this.selectedIndex,  required this.onItemTapped});
  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: onItemTapped,

          items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.people),label:"Me"),]
    );



  }
}

// Primary Screen

import 'package:final_assignment/screen/bottom_screen/about_screen.dart';
import 'package:final_assignment/screen/bottom_screen/cart_screen.dart';
import 'package:final_assignment/screen/bottom_screen/home_screen.dart';
import 'package:final_assignment/screen/bottom_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // to highlight the navbar
  int _selectedIndex = 0;

// list creastion for highlighting screen icon
  List<Widget> lstBottomScreen = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),

      body: lstBottomScreen[_selectedIndex],
      // Bottom Navigation Bar

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // for more than 3 bottom icons
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: 'About',
            ),
          ],

          // color change on Tap
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,

          // current index from list
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}

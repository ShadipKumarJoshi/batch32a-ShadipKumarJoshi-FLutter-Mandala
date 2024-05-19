import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:final_assignment/screen/bottom_screen/cart_screen.dart';
import 'package:final_assignment/screen/bottom_screen/design_screen.dart';
import 'package:final_assignment/screen/bottom_screen/favorite_screen.dart';
import 'package:final_assignment/screen/bottom_screen/home_screen.dart';
import 'package:final_assignment/screen/bottom_screen/menu_screen.dart';
import 'package:final_assignment/utils/colors.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // to highlight the navbar
  int _selectedIndex = 0;

  // list creation for highlighting screen icon
  List<Widget> lstBottomScreen = [
    const HomeScreen(),
    const DesignScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const MenuScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: goldColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First Container with person icon
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/nav_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  // Profile button action
                },
                icon: const Icon(Icons.person),
              ),
            ),

            // Second Container with dashboard logo
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/logo_navbar.png',
                  height: 230.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Third Container with notification icon
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/nav_bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Notification button action
                    },
                    icon: const Icon(Icons.notifications),
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '1', // This could be a dynamic value
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),

      body: lstBottomScreen[_selectedIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: goldColor,
        color: goldColor,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.home, size: 26, color: Colors.white),
          Icon(Icons.format_paint, size: 26, color: Colors.white),
          Icon(Icons.favorite, size: 26, color: Colors.white),
          Icon(Icons.shopping_cart, size: 26, color: Colors.white),
          Icon(Icons.menu, size: 26, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

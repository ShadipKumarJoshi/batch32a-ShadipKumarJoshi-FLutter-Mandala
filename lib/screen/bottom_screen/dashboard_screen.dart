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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                // Profile button action
              },
              icon: const Icon(Icons.person),
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/logo_navbar.png',
                  height: 230.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {
                    // Notification button action
                  },
                  icon: const Icon(Icons.notifications),
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
            icon: Icon(Icons.format_paint),
            label: 'Design',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
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
        },
      ),
    );
  }
}

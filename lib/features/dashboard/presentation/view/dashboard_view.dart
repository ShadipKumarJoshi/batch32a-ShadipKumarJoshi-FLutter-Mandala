// SubView with stateless

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:final_assignment/features/dashboard/presentation/view/bottom_view/cart_view.dart';
import 'package:final_assignment/features/dashboard/presentation/view/bottom_view/design_view.dart';
import 'package:final_assignment/features/dashboard/presentation/view/bottom_view/favorite_view.dart';
import 'package:final_assignment/features/dashboard/presentation/view/bottom_view/home_view.dart';
import 'package:final_assignment/features/dashboard/presentation/view/bottom_view/menu_view.dart';
import 'package:final_assignment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {

  // to highlight the navbar
  int _selectedIndex = 0;

  // list creation for highlighting View icon
  final List<Widget> lstBottomView = [
    const HomeView(),
    const DesignView(),
    const FavoriteView(),
    const CartView(),
    const MenuView()
  ];

  // Method to get the color of the icon based on the selected index
  Color _getIconColor(int index) {
    return _selectedIndex == index ? Colors.black : Colors.white;
  }

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

      body: lstBottomView[_selectedIndex],

      // Curved Navigation Bar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: goldColor, // Set the navigation bar color to gold
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home, color: _getIconColor(0)),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.format_paint, color: _getIconColor(1)),
            label: 'Design',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.favorite, color: _getIconColor(2)),
            label: 'Favorite',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.shopping_cart, color: _getIconColor(3)),
            label: 'Cart',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.menu, color: _getIconColor(4)),
            label: 'Menu',
          ),
        ],

        // Handle button tap
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

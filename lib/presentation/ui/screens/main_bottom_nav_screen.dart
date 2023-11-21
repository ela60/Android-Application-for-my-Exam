import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:project1/presentation/ui/screens/category_list_screens.dart';
import 'package:project1/presentation/ui/screens/home_screen.dart';
import 'package:project1/presentation/ui/screens/wish_list_screens.dart';
import 'package:project1/presentation/ui/utility/app_colors.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryListScreens(),
    const HomeScreen(),
    const WishListScreens(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainButtonNAvController>(builder: (controller) {
      return Scaffold(
        body: _screens[controller.currentSelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentSelectedIndex,
          onTap: controller.ChangeScreen,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          elevation: 4,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard,
                ),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: 'WishList'),
          ],
        ),
      );
    });
  }
}

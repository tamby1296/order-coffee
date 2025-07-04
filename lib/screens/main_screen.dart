import 'package:flutter/material.dart';
import 'package:test/icons/order_coffee.dart';
import 'package:test/screens/favourite_screen.dart';
import 'package:test/screens/home_screen.dart';
import 'package:test/screens/notification_screen.dart';
import 'package:test/screens/orders_screen.dart';
import 'package:test/styles/colors.dart';
import 'package:test/widgets/app_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> widgetOptions = [
    HomeScreen(),
    FavouriteScreen(),
    OrdersScreen(),
    NotificationScreen(),
  ];

  void onNavigationTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: AppColors.kAppBlack.withValues(alpha: 0.2),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: BottomAppBar(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    OrderCoffeeIcon.home,
                    color:
                        _selectedIndex == 0
                            ? AppColors.kAppClay
                            : AppColors.kAppGrey,
                  ),
                  onPressed: () => onNavigationTap(0),
                ),
                IconButton(
                  icon: Icon(
                    OrderCoffeeIcon.heart,
                    color:
                        _selectedIndex == 1
                            ? AppColors.kAppClay
                            : AppColors.kAppGrey,
                  ),
                  onPressed: () => onNavigationTap(1),
                ),
                IconButton(
                  icon: Icon(
                    OrderCoffeeIcon.bag,
                    color:
                        _selectedIndex == 2
                            ? AppColors.kAppClay
                            : AppColors.kAppGrey,
                  ),
                  onPressed: () => onNavigationTap(2),
                ),
                IconButton(
                  icon: Icon(
                    OrderCoffeeIcon.notification,
                    color:
                        _selectedIndex == 3
                            ? AppColors.kAppClay
                            : AppColors.kAppGrey,
                  ),
                  onPressed: () => onNavigationTap(3),
                ),
              ],
            ),
          ),
        ),
      ),
      body: widgetOptions.elementAt(_selectedIndex),
    );
  }
}

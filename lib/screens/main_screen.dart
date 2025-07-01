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
  final List<Widget> widgetOptions = const [
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
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.kAppClay,
          currentIndex: _selectedIndex,
          onTap: onNavigationTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(OrderCoffeeIcon.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(OrderCoffeeIcon.heart),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(OrderCoffeeIcon.bag),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(OrderCoffeeIcon.notification),
              label: 'Alerts',
            ),
          ],
        ),
      ),
      body: widgetOptions.elementAt(_selectedIndex),
    );
  }
}

import 'package:coffeeplanet/Navigations/Navigation_Tabs/homepage.dart';
import 'package:coffeeplanet/Navigations/Navigation_Tabs/notifypage.dart';
import 'package:coffeeplanet/Navigations/Navigation_Tabs/userpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Navigation_Tabs/cartpage.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: NavigationBar(
              backgroundColor: Color(0xffe8e8e8),
              height: 65,
              elevation: 10,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              indicatorColor: Colors.transparent,
              selectedIndex: currentPageIndex,
              destinations: [
                NavigationDestination(
                  selectedIcon: Icon(FontAwesomeIcons.house,
                      color: Color(0xffa75e44), size: 22),
                  icon: Icon(FontAwesomeIcons.house,
                      color: Colors.brown.shade200, size: 22),
                  label: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: FaIcon(FontAwesomeIcons.cartShopping,
                      color: Color(0xffa74e44), size: 22),
                  icon: FaIcon(FontAwesomeIcons.cartShopping,
                      color: Colors.brown.shade200, size: 22),
                  label: 'Cart',
                ),
                NavigationDestination(
                  selectedIcon: FaIcon(FontAwesomeIcons.solidBell,
                      color: Color(0xffa75e44), size: 22),
                  icon: FaIcon(FontAwesomeIcons.solidBell,
                      color: Colors.brown.shade200, size: 22),
                  label: 'Notify',
                ),
                NavigationDestination(
                  selectedIcon: FaIcon(FontAwesomeIcons.solidUser,
                      color: Color(0xffa75e44), size: 22),
                  icon: FaIcon(FontAwesomeIcons.solidUser,
                      color: Colors.brown.shade200, size: 22),
                  label: 'User',
                ),
              ]),
        ),
      ),
      body: [
        HomePage(),
        CartPage(),
        NotifyPage(),
        UserPage(),
      ][currentPageIndex],
    );
  }
}

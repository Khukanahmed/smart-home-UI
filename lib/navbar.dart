import 'package:flutter/material.dart';

NavigationBar appnavbar(currentIndex, Ontap) {
  return NavigationBar(
    indicatorShape: CircleBorder(),
    destinations: [
      NavigationDestination(
          selectedIcon: Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          icon: Icon(Icons.home_outlined),
          label: ''),
      NavigationDestination(
          selectedIcon: Icon(
            Icons.add_alert_sharp,
            color: Colors.white,
          ),
          icon: Icon(Icons.add_alert_sharp),
          label: ''),
      NavigationDestination(
          selectedIcon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          icon: Icon(Icons.add),
          label: ''),
      NavigationDestination(
          selectedIcon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
          icon: Icon(Icons.settings),
          label: ''),
      NavigationDestination(
          selectedIcon: Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
          ),
          icon: Icon(Icons.account_circle_outlined),
          label: ''),
    ],
// fixedColor: Colors.blue,

    // unselectedItemColor: Colors.grey,
    // showUnselectedLabels: true,
    selectedIndex: currentIndex,
    onDestinationSelected: Ontap,
    indicatorColor: Color(0xff10244C),
    // type:BottomNavigationBarType.fixed,
  );
}

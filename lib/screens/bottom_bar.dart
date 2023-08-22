import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:mavi/screens/dashboard.dart';

import 'home_sceen.dart';

class BottomBar
 extends StatefulWidget {
  const BottomBar
  ({super.key});

  @override
  State<BottomBar
  > createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget>_widgetOptions = <Widget>[
    const HomeScreen(),
    const DashboardScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;   
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_24_regular),
            activeIcon: Icon(FluentIcons.home_24_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.border_all_16_regular),
              activeIcon: Icon(FluentIcons.border_all_16_filled),
              label: 'Dashboard'),
        ],
    ),
    );
  }
}
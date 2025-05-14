import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'mobile_view.dart';
import 'tablet_view.dart';
import 'desktop_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Manage selected index

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screen = ResponsiveBreakpoints.of(context);
    final isMobile = screen.isMobile;
    final isTablet = screen.isTablet;
    final isDesktop = screen.isDesktop;

    return Scaffold(
      body: Builder(
        builder: (context) {
          if (isMobile) {
            return MobileView(
              selectedIndex: _selectedIndex,
              onNavItemTapped: _onNavItemTapped,
            ); // Switch to Mobile view
          } else if (isTablet) {
            return TabletView(
              selectedIndex: _selectedIndex,
              onNavItemTapped: _onNavItemTapped,
            ); // Switch to Tablet view
          } else {
            return DesktopView(
              selectedIndex: _selectedIndex,
              onNavItemTapped: _onNavItemTapped,
            ); // Switch to Desktop view
          }
        },
      ),
    );
  }
}

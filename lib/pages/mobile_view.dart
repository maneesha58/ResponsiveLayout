// mobile_view.dart
import 'package:flutter/material.dart';
import 'package:hw5/widgets/bottom_nav_bar.dart';
import 'package:hw5/widgets/card_item.dart';
import 'package:hw5/widgets/drawer_menu.dart';

class MobileView extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onNavItemTapped;

  const MobileView({
    super.key,
    required this.selectedIndex,
    required this.onNavItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Layout"),
        centerTitle: true,
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
        ),
      ),
      drawer: DrawerMenuWidget(onTap: onNavItemTapped),
      bottomNavigationBar: BottomNavBarWidget(
        selectedIndex: selectedIndex,
        onTap: onNavItemTapped,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: List.generate(12, (index) => CardItem(index: index)),
      ),
    );
  }
}

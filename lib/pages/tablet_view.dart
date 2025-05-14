// tablet_view.dart
import 'package:flutter/material.dart';
import 'package:hw5/widgets/drawer_menu.dart';
import 'package:hw5/widgets/navigation_rail.dart';

import 'package:hw5/widgets/card_item.dart';

class TabletView extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onNavItemTapped;

  const TabletView({
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
      body: Row(
        children: [
          NavigationRailWidget(
            selectedIndex: selectedIndex,
            onItemTapped: onNavItemTapped,
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: List.generate(12, (index) => CardItem(index: index)),
            ),
          ),
        ],
      ),
    );
  }
}

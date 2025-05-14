import 'package:flutter/material.dart';
import 'package:hw5/widgets/card_item.dart';
import 'package:hw5/widgets/top_bar.dart';

class DesktopView extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onNavItemTapped;

  const DesktopView({
    super.key,
    required this.selectedIndex,
    required this.onNavItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarMenu(
            selectedIndex: selectedIndex,
            onTabSelected: onNavItemTapped,
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisCount: 4,
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

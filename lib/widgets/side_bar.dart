// lib/widgets/sidebar_widget.dart
import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const SidebarWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          _sidebarButton("Home", Icons.home, 0),
          _sidebarButton("Profile", Icons.person, 1),
          _sidebarButton("Settings", Icons.settings, 2),
        ],
      ),
    );
  }

  Widget _sidebarButton(String title, IconData icon, int index) {
    return ListTile(
      selected: selectedIndex == index,
      leading: Icon(icon),
      title: Text(title),
      onTap: () {},
    );
  }
}

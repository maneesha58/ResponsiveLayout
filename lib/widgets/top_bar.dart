import 'package:flutter/material.dart';

class TopBarMenu extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const TopBarMenu({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 24),

        child: Row(
          children: [
            const Text(
              "Responsive Layout",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            _buildMenuItem(context, "Home", 0),
            const SizedBox(width: 24),
            _buildMenuItem(context, "Profile", 1),
            const SizedBox(width: 24),
            _buildMenuItem(context, "Settings", 2),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String label, int index) {
    final isSelected = selectedIndex == index;
    return InkWell(
      onTap: () => onTabSelected(index),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color:
              isSelected ? Theme.of(context).colorScheme.primary : Colors.black,
        ),
      ),
    );
  }
}

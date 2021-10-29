import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            index: 0,
            icon: Icons.favorite,
            onTap: onItemSelected,
          ),
          _NavItem(
            index: 1,
            icon: Icons.folder,
            onTap: onItemSelected,
          ),
          _NavItem(
            index: 2,
            icon: Icons.settings,
            onTap: onItemSelected,
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    Key? key,
    required this.index,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final IconData icon;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Icon(
        icon,
        size: 24,
        color: Colors.black,
      ),
    );
  }
}

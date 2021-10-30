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
      color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(0),
        boxShadow: const [
          BoxShadow(
            color: Colors.red,
            blurRadius: 4,
            offset: Offset(0, 0), // Shadow position
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            index: 0,
            icon: Icons.favorite,
            label: 'favorite',
            onTap: onItemSelected,
          ),
          _NavItem(
            index: 1,
            icon: Icons.folder,
            label: 'folder',
            onTap: onItemSelected,
          ),
          _NavItem(
            index: 2,
            icon: Icons.settings,
            label: 'settings',
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
    required this.label,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final String label;
  final IconData icon;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        width: 100,
        height: 72,
        //padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 24,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                label.toUpperCase(),
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

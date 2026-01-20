import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<BottomNavigationBarItem> items;

  const ZiBottomNav({super.key, required this.currentIndex, required this.onTap, required this.items});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: ZiColors.primary,
      unselectedItemColor: ZiColors.grayLight,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      items: items,
    );
  }
}
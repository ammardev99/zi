import 'package:flutter/material.dart';
import 'package:zi/web_view/site/web_components/tabs.dart.dart';
import 'package:zi/widgets/content_body.dart';
import 'package:zi/widgets/utiles.dart';

class WebSidebarLeft extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelect;

  const WebSidebarLeft({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return ContentBody(
      width: 250,
      child: ListView.separated(
        itemCount: tabOptionsList.length,
        itemBuilder: (context, index) {
          return SideTab(
            label: tabOptionsList[index].label,
            isActive: index == selectedIndex,
            onTap: () => onSelect(index),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 8),
      ),
    );
  }
}
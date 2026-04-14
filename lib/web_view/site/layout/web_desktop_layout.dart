import 'package:flutter/material.dart';
import 'package:zi/web_view/sections/header.dart';
import 'package:zi/web_view/site/web_components/tabs.dart.dart';
import '../web_components/sidebar_left_web.dart';
import '../web_components/web_sidebar_right.dart';
import '../web_components/web_content_area.dart';

class WebDesktopLayout extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelect;

  const WebDesktopLayout({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final item = tabOptionsList[selectedIndex];

    bool showRightSidebar = MediaQuery.of(context).size.width > 1100;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Header(),
            Expanded(
              child: Row(
                children: [
                  WebSidebarLeft(
                    selectedIndex: selectedIndex,
                    onSelect: onSelect,
                  ),
                  WebContentArea(
                    title: item.label,
                    // showFooterSidebar: !showRightSidebar,
                    child: item.page,
                  ),

                  if (showRightSidebar) const WebSidebarRight(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'layout/web_desktop_layout.dart';
import 'layout/web_mobile_layout.dart';

class WebCollection extends StatefulWidget {
  const WebCollection({super.key});

  @override
  State<WebCollection> createState() => _WebCollectionState();
}

class _WebCollectionState extends State<WebCollection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth > 800;

        if (isDesktop) {
          return WebDesktopLayout(
            selectedIndex: selectedIndex,
            onSelect: (i) => setState(() => selectedIndex = i),
          );
        } else {
          return const WebMobileLayout();
        }
      },
    );
  }
}
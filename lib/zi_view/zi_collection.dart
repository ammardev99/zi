import 'package:flutter/material.dart';
import 'package:zi/zi_view/collection/view_tabs.dart';
import '../zi_core/zi_core_io.dart';
import 'zi_view_io.dart';

class ZiCollection extends StatelessWidget {
  const ZiCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          SectionDivider(label: "Zi Collections"),
          CollectionTab(label: "Menu Options", page: MenuOptions()),
          CollectionTab(label: "View Buttons", page: ViewButtons()),
          CollectionTab(label: "Loadings", page: ViewLoadings()),
          CollectionTab(label: "Inputs", page: ViewZiInputs()),
          CollectionTab(label: "Bottom Bar Page", page: ViewBottomBars()),
          CollectionTab(label: "FeedOver", page: ViewFeedOver()),
          CollectionTab(label: "Selections", page: ViewSelections()),
          CollectionTab(label: "Tabs", page: ViewTabs()),
          CollectionTab(label: "Test Page", page: ViewTestPage()),
          CollectionTab(label: "Test Page", page: ViewTestPage()),
          CollectionTab(label: "Test Page", page: ViewTestPage()),
          // Divider(),
        ],
      ),
    );
  }
}

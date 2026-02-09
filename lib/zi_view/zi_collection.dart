import 'package:flutter/material.dart';
import 'package:zi/zi_view/zi_view_io.dart';
import 'package:zi_core/zi_core.dart';

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
          CollectionTab(label: "Bottom Bar Page", page: ViewBottomBars()),
          CollectionTab(label: "Inputs", page: ViewZiInputs()),
          SectionDivider(label: "underdevelopment"),
          CollectionTab(label: "Tabs", page: ViewTabs()),
          CollectionTab(label: "Selections", page: ViewSelections()),
          CollectionTab(label: "FeedOver", page: ViewFeedOver()),
          CollectionTab(label: "Media Images", page: ViewMediaImagesPage()),
          CollectionTab(label: "Typography", page: TypographyPage()),
          CollectionTab(label: "Theme Colors", page: ThemeColorsPage()),
          CollectionTab(label: "Test Page", page: ViewTestPage()),
          // CollectionTab(label: "Zi Shell", page: SplashScreen()),
          Divider(),
          Text(ziCoreHealth(type: ZiCoreHealthType.patch)),
        ],
      ),
    );
  }
}

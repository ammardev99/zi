import 'package:zi/zi_core/zi_core_io.dart';
import 'package:zi/zi_view/collection/view_bottom_bar.dart';
import 'package:zi/zi_view/collection/view_inputs.dart';
import 'collection/view_buttons.dart';
import 'collection/view_loadings.dart';
import 'collection/view_menu_options.dart';
import '../widgets/collection_tab.dart';
import 'package:flutter/material.dart';
import 'collection/view_test.dart';

class ZiCollection extends StatelessWidget {
  const ZiCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          // Show Collection card
          CollectionTab(label: "Menu Options", page: MenuOptions()),
          CollectionTab(label: "View Buttons", page: ViewButtons()),
          CollectionTab(label: "Loadings", page: ViewLoadings()),
          CollectionTab(label: "Inputs", page: ViewZiInputs()),
          CollectionTab(label: "Bottom Bar Page", page: ViewBottomBars()),
          CollectionTab(label: "Test Page", page: ViewTestPage()),
          CollectionTab(label: "Test Page", page: ViewTestPage()),
          CollectionTab(label: "Test Page", page: ViewTestPage()),
          Divider(),
        ],
      ),
    );
  }
}

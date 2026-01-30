import 'package:flutter/material.dart';
import 'package:zi/zi_core/zi_core_io.dart';

import '../../zi_core/theme/zi_motion.dart';

class ViewTestPage extends StatelessWidget {
  const ViewTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBar(title: "Test Page"),
      body: Column(
        children: [
          AnimatedContainer(
            duration: ZiMotion.normal,
            curve: ZiMotion.standard,
          ),
        ],
      ),
    );
  }
}

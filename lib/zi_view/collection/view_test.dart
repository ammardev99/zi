import 'package:flutter/material.dart';
import 'package:zi_core/zi_core.dart';

class ViewTestPage extends StatelessWidget {
  const ViewTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBarB(title: "Test Page"),
      body: Column(
        children: [
          // AnimatedContainer(
          // TODO: update requried
          //   duration: ZiMotion.normal,
          //   curve: ZiMotion.standard,
          // ),
        ],
      ),
    );
  }
}

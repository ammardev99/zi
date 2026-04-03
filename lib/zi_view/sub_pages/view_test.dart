import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class ViewTestPage extends StatelessWidget {
  const ViewTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      // appBar: ZiAppBarB(title: "Test Page"),
      body: Column(
        children: [
          // AnimatedContainer(
          // later - update requried
          //   duration: ZiMotion.normal,
          //   curve: ZiMotion.standard,
          // ),
        ],
      ),
    );
  }
}

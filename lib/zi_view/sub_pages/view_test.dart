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

// view so i can seet different use of each type in row

// const SectionDivider(label: "collection type name 1", isComplete: true), // types
//  r1
// const SectionDivider(label: "collection type name 2", isComplete: true), // variations
// r2
// const SectionDivider(label: "collection type or customizations name 2", isComplete: true), // mix
// R3
// you can add more as we can use cases and customizations

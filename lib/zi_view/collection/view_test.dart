import 'package:flutter/material.dart';
import 'package:zi/zi_core/zi_core_io.dart';


class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBar(title: "Test Page"),
      body: Column(
        children: [
        ],
      ),
    );
  }
}

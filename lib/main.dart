import 'package:flutter/material.dart';
import 'zi_view/zi_collection.dart';
import 'package:zi_core/zi_core.dart'; // Best practice barrel export

void main() {
  assert(() {
    debugPrint(ziCoreHealth());
    return true;
  }());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: ZiCollection(),
    );
  }
}

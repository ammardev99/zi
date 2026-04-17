import 'package:flutter/material.dart';
import 'package:zi/web_view/site/web_collection.dart';
import 'package:zi_core/zi_core_io.dart'; // Best practice barrel export

void main() {
  ZiStatusToast.navigatorKey;
  ZiColors.override(
    ZiColorOverrides(
      primary: const Color(0xFFBD00FF),
      secondary: const Color(0xFF5F0080),
      tertiary: const Color(0xFF19061B),
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      // home: ZiCollection(),
      home: WebCollection(),
    );
  }
}

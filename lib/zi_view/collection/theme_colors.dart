import 'package:flutter/material.dart';
import 'package:zi_core/zi_core.dart';

class ThemeColorsPage extends StatelessWidget {
  const ThemeColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBarB(title: "Test Page"),
      body: Column(
        children: [
          colorsCard("primary", ZiColors.primary),
          ziGap(10),
          colorsCard("primarySoft", ZiColors.primarySoft),
          ziGap(10),
          colorsCard("accent", ZiColors.accent),
          ziGap(10),
          colorsCard("secondary", ZiColors.secondary),
          ziGap(10),
          colorsCard("tertiary", ZiColors.tertiary),
          ziGap(10),
          colorsCard("primaryDark", ZiColors.primaryDark),
          ziGap(10),
        ],
      ),
    );
  }
}

Widget colorsCard(String label, Color color) {
  return Container(
    width: 100,
    height: 40,
    color: color,
    child: Center(child: Text(label, style: ZiTypoStyles.caption)),
  );
}

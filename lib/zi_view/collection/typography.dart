import 'package:flutter/material.dart';
import 'package:zi_core/zi_core.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBarB(title: "Test Page"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(ZiAppStrings.loremIpsum1, style: ZiTypoStyles.titleSm),
          Text(ZiAppStrings.loremIpsum1, style: ZiTypoStyles.titleMd),
          Text(ZiAppStrings.loremIpsum1, style: ZiTypoStyles.titleLg),
          Text(ZiAppStrings.loremIpsum1, style: ZiTypoStyles.titleXl),
          SectionDivider(label: "Button"),
          Text('button Text',style: ZiTypoStyles.button.copyWith(color: ZiColors.textDark),
          ),
        ],
      ),
    );
  }
}

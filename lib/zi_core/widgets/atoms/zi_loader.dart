import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiLoader extends StatelessWidget {
  const ZiLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(ZiColors.primary),
        strokeWidth: 3,
      ),
    );
  }
}
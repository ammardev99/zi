import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiEmptyState extends StatelessWidget {
  final String message;
  final IconData? icon;

  const ZiEmptyState({super.key, required this.message, this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon ?? Icons.inbox, size: 64, color: ZiColors.grayLight),
          ZiSpacing.mBox,
          Text(message, textAlign: TextAlign.center, style: ZiTextStyles.body),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'zi_colors.dart';

class ZiShadows {
  ZiShadows._();

  static final List<BoxShadow> card = [
    BoxShadow(
      color: ZiColors.black.withValues(alpha: 0.05),
      blurRadius: 10,
      offset: const Offset(0, 4),
    ),
  ];

  static final List<BoxShadow> button = [
    BoxShadow(
      color: ZiColors.primary.withValues(alpha: 0.2),
      blurRadius: 6,
      offset: const Offset(0, 2),
    ),
  ];
}

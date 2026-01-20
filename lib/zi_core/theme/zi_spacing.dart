import 'package:flutter/material.dart';

class ZiSpacing {
  ZiSpacing._();

  // Gaps (Numbers)
  static const double sm8 = 8.0;
  static const double md16 = 16.0;
  static const double lg24 = 24.0;

  // Paddings
  static const EdgeInsets smallPadding = EdgeInsets.all(sm8);
  static const EdgeInsets mediumPadding = EdgeInsets.all(md16);
  static const EdgeInsets largePadding = EdgeInsets.all(lg24);

  // Widgets (SizedBoxes)
  static const SizedBox sBox = SizedBox(width: sm8, height: sm8);
  static const SizedBox mBox = SizedBox(width: md16, height: md16);
  static const SizedBox lBox = SizedBox(width: lg24, height: lg24);
}

import 'package:flutter/material.dart';

class ZiAdoptColor {
  static Color light(Color base, int percent) =>
      Color.alphaBlend(Colors.white.withValues(alpha: percent / 100), base);

  static Color dark(Color base, int percent) =>
      Color.alphaBlend(Colors.black.withValues(alpha: percent / 100), base);
}

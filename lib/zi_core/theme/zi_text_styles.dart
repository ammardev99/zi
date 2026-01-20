import 'package:flutter/material.dart';
import 'zi_colors.dart';

class ZiTextStyles {
  ZiTextStyles._();

  // Primary heading for Page Titles
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ZiColors.black,
    letterSpacing: -0.5,
  );

  // Added: subHeading for Section Titles or Card Headers
  static const TextStyle subHeading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600, // Semi-bold
    color: ZiColors.black,
    letterSpacing: -0.2,
  );

  // Standard reading text
  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: ZiColors.gray,
  );

  // For Buttons
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ZiColors.white,
  );

  // Added: caption for small metadata, hints, or labels
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: ZiColors.grayLight,
  );
}

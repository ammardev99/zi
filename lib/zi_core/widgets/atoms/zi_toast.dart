import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiToast {
  static void show(BuildContext context, String message, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: ZiTextStyles.body.copyWith(color: ZiColors.white)),
        backgroundColor: isError ? ZiColors.error : ZiColors.success,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ZiRadius.sm)),
      ),
    );
  }
}
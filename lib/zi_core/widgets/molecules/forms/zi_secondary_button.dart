import 'package:flutter/material.dart';

import '../../../theme/zi_theme_io.dart';

class ZiSecondaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ZiSecondaryButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: ZiSpacing.mediumPadding,
          side: const BorderSide(color: ZiColors.primary, width: 1.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ZiRadius.button)),
        ),
        onPressed: onPressed,
        child: Text(title, style: ZiTextStyles.button.copyWith(color: ZiColors.primary)),
      ),
    );
  }
}
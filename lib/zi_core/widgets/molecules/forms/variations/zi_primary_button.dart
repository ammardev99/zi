import 'package:flutter/material.dart';
import '../../../../theme/zi_colors.dart';
import '../../../../theme/zi_radius.dart';
import '../../../../theme/zi_spacing.dart';
import '../../../../theme/zi_typography.dart';

class ZiPrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isLoading;

  const ZiPrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ZiColors.primary,
          foregroundColor: ZiColors.white,
          padding: ZiSpacing.mediumPadding,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ZiRadius.button),
          ),
        ),
        onPressed: isLoading ? null : onPressed,
        child:
            isLoading
                ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: ZiColors.white,
                    strokeWidth: 2,
                  ),
                )
                : Text(title, style: ZiTextStyles.button),
      ),
    );
  }
}

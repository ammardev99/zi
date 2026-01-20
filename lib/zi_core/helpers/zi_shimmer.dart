import 'package:flutter/material.dart';
import '../theme/zi_theme_io.dart';

class ZiShimmer extends StatelessWidget {
  final double width;
  final double height;
  final double? borderRadius;

  const ZiShimmer({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: ZiColors.grayLight.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(borderRadius ?? ZiRadius.sm),
      ),
    );
  }
}

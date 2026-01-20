import 'package:flutter/material.dart';
import '../../../theme/zi_colors.dart';
import '../../../theme/zi_radius.dart';
import '../../../theme/zi_icon_sizes.dart';

class ZiIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final Color? color;
  final double? size;
  final String? tooltip;

  const ZiIconButton({
    super.key,
    required this.icon,
    this.onTap,
    this.color,
    this.size,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(
      icon,
      size: size ?? ZiIconSizes.md,
      color: onTap == null
          ? ZiColors.grayLight
          : (color ?? ZiColors.primary),
    );

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(ZiRadius.sm),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(ZiRadius.sm),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: tooltip != null
              ? Tooltip(message: tooltip!, child: iconWidget)
              : iconWidget,
        ),
      ),
    );
  }
}

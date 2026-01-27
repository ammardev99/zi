import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';

class ZiIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final Color? color;
  final ZiBtnStyle? style;

  const ZiIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.color,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final s = style ?? ZiBtnStyle.icon();

    final iconWidget = Icon(
      icon,
      size: s.iconSize,
      color: color ?? s.foregroundColor ?? ZiColors.primary,
    );

    return Material(
      color: Colors.transparent,
      borderRadius: s.borderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: s.borderRadius,
        child: Padding(padding: s.padding!, child: iconWidget),
      ),
    );
  }
}

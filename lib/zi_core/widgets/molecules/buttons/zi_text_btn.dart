import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';


class ZiTextButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final ZiBtnStyle? style;

  const ZiTextButton({
    super.key,
    required this.label,
    this.onTap,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final s = style ?? const ZiBtnStyle();

    return InkWell(
      onTap: onTap,
      splashColor: s.splashColor,
      borderRadius: BorderRadius.circular(100),
      child: Padding(
        padding: s.padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          label,
          style: s.textStyle ?? TextStyle(color: s.foregroundColor ?? ZiColors.primary),
        ),
      ),
    );
  }
}

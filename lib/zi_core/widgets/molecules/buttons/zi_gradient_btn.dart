import 'package:flutter/material.dart';

import 'zi_btn_style.dart';

class ZiGradientButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final Gradient gradient;
  final ZiBtnStyle? style;

  const ZiGradientButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.gradient,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final s = style ?? ZiBtnStyle.fill();

    final btn = InkWell(
      onTap: onTap,
      borderRadius: s.borderRadius,
      child: Container(
        padding: s.padding,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: s.borderRadius,
        ),
        child: Center(
          child: Text(
            label,
            style: s.textStyle ??
                const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    return s.expand ? Expanded(child: btn) : btn;
  }
}

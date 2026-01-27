import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';


class ZiOutlineButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final ZiBtnStyle? style;

  const ZiOutlineButton({
    super.key,
    required this.label,
    required this.onTap,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final s = style ?? ZiBtnStyle.outline();

    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: s.borderColor ?? ZiColors.primary),
        shape: RoundedRectangleBorder(
          borderRadius: s.borderRadius!,
        ),
      ),
      child: Text(
        label,
        style: s.textStyle ??
            TextStyle(color: s.foregroundColor ?? ZiColors.primary),
      ),
    );
  }
}


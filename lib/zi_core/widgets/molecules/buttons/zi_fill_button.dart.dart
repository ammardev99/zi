import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';


class ZiFillButton extends StatelessWidget {
  final String label;
  final ZiTapAction? onAction;
  final ZiBtnStyle? style;
  final bool loading;

  const ZiFillButton({
    super.key,
    required this.label,
    required this.onAction,
    this.style,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    final s = style ?? ZiBtnStyle.fill();

    final btn = Material(
      color: s.backgroundColor ?? ZiColors.primary,
      borderRadius: s.borderRadius,
      child: InkWell(
        onTap: () => onAction!.execute(context),
        borderRadius: s.borderRadius,
        child: Padding(
          padding: s.padding!,
          child: Center(
            child:
                loading
                    ? ZiLoading()
                    : Text(
                      label,
                      style:
                          s.textStyle ??
                          TextStyle(color: s.foregroundColor ?? Colors.white),
                    ),
          ),
        ),
      ),
    );

    return s.expand ? Expanded(child: btn) : btn;
  }
}

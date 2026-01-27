import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';

abstract class ZiButtonProps {
  bool get enabled;
  bool get loading;

  ZiTapAction? get onTap;
  ZiTapAction? get onLongPress;

  EdgeInsetsGeometry? get padding;
  BorderRadius? get borderRadius;

  Color? get backgroundColor;
  Color? get foregroundColor;
  Color? get splashColor;
  Color? get hoverColor;

  String? get tooltip;

  FocusNode? get focusNode;
  bool get autofocus;

  double? get width;
  double? get height;
  bool get expand;
}

abstract class ZiIconButtonProps extends ZiButtonProps {
  IconData get icon;
  double? get iconSize;
}

// zi _button_variant.dart

class ZiButton2 extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final VoidCallback? onTap;
  final ZiBtnStyle2 style;

  const ZiButton2({
    super.key,
    this.text,
    this.icon,
    this.onTap,
    this.style = const ZiBtnStyle2(), // default style
  });

  @override
  Widget build(BuildContext context) {
    final hasIcon = icon != null && text != null;

    return Material(
      color: style.backgroundColor,
      borderRadius: BorderRadius.circular(style.borderRadius!),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(style.borderRadius!),
        child: Container(
          height: style.height,
          padding: style.padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(style.borderRadius!),
            border:
                style.borderColor != null
                    ? Border.all(color: style.borderColor!)
                    : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(icon, color: style.textColor, size: style.iconSize),
              if (hasIcon) SizedBox(width: style.iconSpacing),
              if (text != null)
                Text(
                  text!,
                  style: style.textStyle?.copyWith(color: style.textColor),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ZiBtnStyle2 {
  // Colors
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  // Shape
  final double? borderRadius;
  final double? height;
  final EdgeInsetsGeometry? padding;

  // Typography
  final TextStyle? textStyle;

  // Icon
  final double? iconSize;
  final double? iconSpacing;

  // Constructor with default values
  const ZiBtnStyle2({
    this.backgroundColor = ZiColors.primary,
    this.textColor = Colors.white,
    this.borderColor,
    this.borderRadius = ZiRadius.md,
    this.height = 48,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.textStyle = ZiTextStyles.button,
    this.iconSize = ZiIconSizes.md,
    this.iconSpacing = 8,
  });

  ZiBtnStyle2 copyWith({
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
    double? borderRadius,
    double? height,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    double? iconSize,
    double? iconSpacing,
  }) {
    return ZiBtnStyle2(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      borderColor: borderColor ?? this.borderColor,
      borderRadius: borderRadius ?? this.borderRadius,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
      iconSize: iconSize ?? this.iconSize,
      iconSpacing: iconSpacing ?? this.iconSpacing,
    );
  }
}

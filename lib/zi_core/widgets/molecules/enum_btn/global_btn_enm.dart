// import 'package:flutter/material.dart';

// class ZiBtnEnm extends StatelessWidget {
//   final String? text;
//   final IconData? icon;
//   final VoidCallback? onTap;
//   final ZiBtnEnmStyle style;

//   const ZiBtnEnm({
//     super.key,
//     this.text,
//     this.icon,
//     this.onTap,
//     this.style = const ZiBtnEnmStyle(), // default style
//   });

//   @override
//   Widget build(BuildContext context) {
//     final hasIcon = icon != null && text != null;
    
//     return Material(
//       color: style.backgroundColor,
//       borderRadius: BorderRadius.circular(style.borderRadius!),
//       child: InkWell(
//         onTap: onTap,
//         borderRadius: BorderRadius.circular(style.borderRadius!),
//         child: Container(
//           height: style.height,
//           padding: style.padding,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(style.borderRadius!),
//             border: style.borderColor != null
//                 ? Border.all(color: style.borderColor!)
//                 : null,
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               if (icon != null) Icon(icon, color: style.textColor, size: style.iconSize),
//               if (hasIcon) SizedBox(width: style.iconSpacing),
//               if (text != null) Text(text!, style: style.textStyle?.copyWith(color: style.textColor)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// /////


// enum ZiBtnEnmType {
//   primary,
//   secondary,
//   text,
//   icon,
//   fab,
// }


// class ZiButtonEnum extends StatelessWidget {
//   final String? text;
//   final IconData? icon;
//   final VoidCallback? onTap;
//   final ZiBtnEnmType type;
//   final ZiBtnEnmStyle? styleOverride;

//   const ZiButtonEnum({
//     super.key,
//     this.text,
//     this.icon,
//     this.onTap,
//     this.type = ZiBtnEnmType.primary,
//     this.styleOverride,
//   });

//   ZiBtnEnmStyle getStyle() {
//     switch (type) {
//       case ZiBtnEnmType.primary:
//         return ZiBtnEnmStyle(
//           backgroundColor: Colors.blue,
//           textColor: Colors.white,
//         ).copyWith(
//           backgroundColor: styleOverride?.backgroundColor,
//           textColor: styleOverride?.textColor,
//         );
//       case ZiBtnEnmType.secondary:
//         return ZiBtnEnmStyle(
//           backgroundColor: Colors.transparent,
//           textColor: Colors.blue,
//           borderColor: Colors.blue,
//         ).copyWith(
//           backgroundColor: styleOverride?.backgroundColor,
//           textColor: styleOverride?.textColor,
//           borderColor: styleOverride?.borderColor,
//         );
//       case ZiBtnEnmType.text:
//         return ZiBtnEnmStyle(
//           backgroundColor: Colors.transparent,
//           textColor: Colors.blue,
//         ).copyWith(
//           textColor: styleOverride?.textColor,
//         );
//       case ZiBtnEnmType.icon:
//         return ZiBtnEnmStyle(
//           backgroundColor: Colors.transparent,
//           textColor: Colors.blue,
//           borderRadius: 100,
//         ).copyWith(
//           backgroundColor: styleOverride?.backgroundColor,
//         );
//       case ZiBtnEnmType.fab:
//         return ZiBtnEnmStyle(
//           backgroundColor: Colors.blue,
//           textColor: Colors.white,
//           borderRadius: 100,
//           height: 56,
//         ).copyWith(
//           backgroundColor: styleOverride?.backgroundColor,
//         );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final style = getStyle();
//     return 
//     ZiBtnEnm(
//       text: text,
//       icon: icon,
//       onTap: onTap,
//       style: style,
//     );
//   }
// }

// //

// class ZiBtnEnmStyle {
//   final Color backgroundColor;
//   final Color textColor;
//   final Color? borderColor;
//   final double borderRadius;
//   final double height;
//   final EdgeInsets padding;
//   final TextStyle textStyle;
//   final double iconSize;
//   final double iconSpacing;

//   const ZiBtnEnmStyle({
//     this.backgroundColor = Colors.blue,
//     this.textColor = Colors.white,
//     this.borderColor,
//     this.borderRadius = 12,
//     this.height = 48,
//     this.padding = const EdgeInsets.symmetric(horizontal: 16),
//     this.textStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//     this.iconSize = 24,
//     this.iconSpacing = 8,
//   });

//   ZiBtnEnmStyle copyWith({
//     Color? backgroundColor,
//     Color? textColor,
//     Color? borderColor,
//     double? borderRadius,
//     double? height,
//     EdgeInsets? padding,
//     TextStyle? textStyle,
//     double? iconSize,
//     double? iconSpacing,
//   }) {
//     return ZiBtnEnmStyle(
//       backgroundColor: backgroundColor ?? this.backgroundColor,
//       textColor: textColor ?? this.textColor,
//       borderColor: borderColor ?? this.borderColor,
//       borderRadius: borderRadius ?? this.borderRadius,
//       height: height ?? this.height,
//       padding: padding ?? this.padding,
//       textStyle: textStyle ?? this.textStyle,
//       iconSize: iconSize ?? this.iconSize,
//       iconSpacing: iconSpacing ?? this.iconSpacing,
//     );
//   }
// }



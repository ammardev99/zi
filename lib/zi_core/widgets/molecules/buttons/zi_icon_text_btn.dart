// import 'package:flutter/material.dart';
// import 'package:zi/zi_core/widgets/molecules/buttons/zi_fill_button.dart.dart';

// import 'zi_btn_style.dart';

// class ZiIconTextButton extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final VoidCallback? onTap;
//   final ZiBtnStyle? style;

//   const ZiIconTextButton({
//     super.key,
//     required this.icon,
//     required this.label,
//     this.onTap,
//     this.style,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final s = style ?? ZiBtnStyle.fill();

//     return ZiFillButton(
//       label: label,
//       onTap: onTap,
//       style: s.copyWith(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       ),
//     );
//   }
// }

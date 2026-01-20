import 'package:flutter/material.dart';

import '../../../theme/zi_theme_io.dart';

class ZiTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const ZiTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: ZiTextStyles.body.copyWith(color: ZiColors.black),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: ZiTextStyles.body.copyWith(color: ZiColors.grayLight),
        contentPadding: ZiSpacing.mediumPadding,
        filled: true,
        fillColor: ZiColors.background,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ZiRadius.input),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}

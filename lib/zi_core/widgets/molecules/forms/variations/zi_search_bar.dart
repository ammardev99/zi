import 'package:flutter/material.dart';
import '../../../../theme/zi_theme_io.dart';

class ZiSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Function(String)? onChanged;

  const ZiSearchBar({
    super.key,
    required this.controller,
    this.hint = "Search...",
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ZiSpacing.smallPadding,
      decoration: BoxDecoration(
        color: ZiColors.white,
        borderRadius: BorderRadius.circular(ZiRadius.md),
        boxShadow: ZiShadows.card,
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: const Icon(Icons.search, color: ZiColors.primary),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
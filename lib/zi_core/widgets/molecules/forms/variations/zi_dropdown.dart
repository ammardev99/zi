import 'package:flutter/material.dart';
import '../../../../theme/zi_colors.dart';
import '../../../../theme/zi_radius.dart';
import '../../../../theme/zi_typography.dart';

class ZiDropdown<T> extends StatelessWidget {
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final String hint;
  final Function(T?) onChanged;

  const ZiDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    required this.hint,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ZiRadius.md),
        border: Border.all(color: ZiColors.grayLight),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: value,
          items: items,
          onChanged: onChanged,
          hint: Text(hint, style: ZiTextStyles.bodyMedium),
          isExpanded: true,
        ),
      ),
    );
  }
}

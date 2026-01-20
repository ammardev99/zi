import 'package:flutter/material.dart';
import '../../../theme/zi_colors.dart';
import '../../../theme/zi_radius.dart';

class ZiPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;

  const ZiPasswordField({
    super.key,
    required this.controller,
    required this.label,
    this.validator,
  });

  @override
  State<ZiPasswordField> createState() => _ZiPasswordFieldState();
}

class _ZiPasswordFieldState extends State<ZiPasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscure,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: widget.label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ZiRadius.md),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscure ? Icons.visibility_off : Icons.visibility,
            color: ZiColors.gray,
          ),
          onPressed: () {
            setState(() => _obscure = !_obscure);
          },
        ),
      ),
    );
  }
}

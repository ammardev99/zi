import 'package:flutter/material.dart';
import 'package:zi/widgets/wrapper.dart';
import 'package:zi_core/zi_core_io.dart';

class WebContentArea extends StatelessWidget {
  final String title;
  final Widget child;

  const WebContentArea({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: ZiColors.border),
            right: BorderSide(color: ZiColors.border),
          ),
        ),
        child: WebContentWrapper(
          title: title,
          child: child, // ✅ no Column, no sidebar
        ),
      ),
    );
  }
}
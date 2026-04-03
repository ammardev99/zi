// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

// ignore: must_be_immutable
class ContentBody extends StatelessWidget {
  final Widget child;
  final double? width;

  const ContentBody({
    super.key,
    required this.child,
    this.width = 250,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ZiColors.accent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
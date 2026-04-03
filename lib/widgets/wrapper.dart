import 'package:flutter/material.dart';
import 'package:zi/widgets/content_body.dart';
import 'package:zi_core/zi_core_io.dart';

class WebContentWrapper extends StatelessWidget {
  final String? title;
  final Widget child;
  final Color? backgroundColor;
  final double borderRadius;

  const WebContentWrapper({
    super.key,
    required this.child,
    this.title,
    this.backgroundColor,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return ContentBody(
      child: Container(
        color: backgroundColor ?? ZiColors.accent,
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            if (title != null) Text(title!, style: ZiTypoStyles.titleMd),
            ziGap(15),
            // Content Card
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ZiColors.transparent,
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: Border.all(color: ZiColors.border),
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

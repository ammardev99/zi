import 'package:flutter/material.dart';

import '../theme/zi_theme_io.dart';

class ZiErrorView extends StatelessWidget {
  final String errorMessage;
  final VoidCallback? onRetry;

  const ZiErrorView({super.key, required this.errorMessage, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, color: ZiColors.error, size: 48),
          ZiSpacing.sBox,
          Text(errorMessage, style: ZiTextStyles.body.copyWith(color: ZiColors.error)),
          if (onRetry != null)
            TextButton(onPressed: onRetry, child: const Text('Try Again')),
        ],
      ),
    );
  }
}
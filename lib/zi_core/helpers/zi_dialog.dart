import 'package:flutter/material.dart';
import '../theme/zi_text_styles.dart';
import '../widgets/molecules/forms/variations/zi_primary_button.dart';

class ZiDialog extends StatelessWidget {
  final String title;
  final String message;
  final String confirmLabel;
  final VoidCallback onConfirm;

  const ZiDialog({
    super.key,
    required this.title,
    required this.message,
    this.confirmLabel = "Confirm",
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, style: ZiTextStyles.heading),
      content: Text(message, style: ZiTextStyles.body),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Cancel"),
        ),
        ZiPrimaryButton(title: confirmLabel, onPressed: onConfirm),
      ],
    );
  }
}

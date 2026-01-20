import 'package:flutter/material.dart';
// url_launcher

enum ZiTabActionType {
  navigate,
  openUrl,
  dialog,
  custom,
}

class ZiTabAction {
  final IconData icon;
  final String label;
  final ZiTabActionType type;
  final String? route;
  final String? url;
  final WidgetBuilder? dialogBuilder;
  final VoidCallback? onTap;

  const ZiTabAction({
    required this.icon,
    required this.label,
    required this.type,
    this.route,
    this.url,
    this.dialogBuilder,
    this.onTap,
  });

  Future<void> execute(BuildContext context) async {
    switch (type) {
      case ZiTabActionType.navigate:
        if (route != null) {
          Navigator.pushNamed(context, route!);
        }
        break;

      case ZiTabActionType.openUrl:
        if (url != null) {
          final uri = Uri.parse(url!);
          debugPrint('Opening URL: $uri');
          // TODO: zi-url_launcher Uncomment the following lines if using url_launcher package
          // if (await canLaunchUrl(uri)) {
          //   await launchUrl(uri);
          // }
        }
        break;

      case ZiTabActionType.dialog:
        if (dialogBuilder != null) {
          showDialog(
            context: context,
            builder: dialogBuilder!,
          );
        }
        break;

      case ZiTabActionType.custom:
        onTap?.call();
        break;
    }
  }
}

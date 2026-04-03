import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class ZiStatusToastView extends StatelessWidget {
  const ZiStatusToastView({super.key});

  @override
  Widget build(BuildContext context) {
    ZiStatusToast.init(context);
    return ZiScaffoldB(
      // appBar: ZiAppBarB(title: 'ZiToast — Use Cases'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _SectionLabel('Status Types'),
          _ToastRow(
            children: [
              _ToastButton(
                label: 'Success',
                icon: Icons.check_circle_outline,
                color: const Color(0xFF16A34A),
                onTap:
                    () => ZiStatusToast.success(
                      'Changes saved',
                      subtitle: 'All data has been updated.',
                    ),
              ),
              _ToastButton(
                label: 'Error',
                icon: Icons.cancel_outlined,
                color: const Color(0xFFDC2626),
                onTap:
                    () => ZiStatusToast.error(
                      'Something went wrong',
                      subtitle: 'Please try again.',
                    ),
              ),
              _ToastButton(
                label: 'Warning',
                icon: Icons.warning_amber_outlined,
                color: const Color(0xFFD97706),
                onTap:
                    () => ZiStatusToast.warning(
                      'Unsaved changes',
                      subtitle: 'You have pending edits.',
                    ),
              ),
              _ToastButton(
                label: 'Info',
                icon: Icons.info_outline,
                color: const Color(0xFF2563EB),
                onTap:
                    () => ZiStatusToast.info(
                      'New version available',
                      subtitle: 'v2.1.0 is ready to install.',
                    ),
              ),
            ],
          ),

          _SectionLabel('Loading State'),
          _ToastRow(
            children: [
              _ToastButton(
                label: 'Loading',
                icon: Icons.hourglass_empty_outlined,
                color: ZiColors.accent,
                onTap: () {
                  ZiStatusToast.loading('Uploading file...');
                  // simulate async then dismiss
                  Future.delayed(
                    const Duration(seconds: 3),
                    () => ZiStatusToast.success('Upload complete'),
                  );
                },
              ),
              _ToastButton(
                label: 'Dismiss',
                icon: Icons.close_rounded,
                color: ZiColors.grayLight,
                onTap: ZiStatusToast.dismiss,
              ),
            ],
          ),

          _SectionLabel('Position Variants'),
          _ToastRow(
            children: [
              _ToastButton(
                label: 'Top',
                icon: Icons.vertical_align_top_rounded,
                color: ZiColors.accent,
                onTap:
                    () => ZiStatusToast.info(
                      'Showing at top',
                      position: ZiStatusToastPosition.top,
                    ),
              ),
              _ToastButton(
                label: 'Bottom',
                icon: Icons.vertical_align_bottom_rounded,
                color: ZiColors.accent,
                onTap:
                    () => ZiStatusToast.info(
                      'Showing at bottom',
                      position: ZiStatusToastPosition.bottom,
                    ),
              ),
            ],
          ),

          _SectionLabel('Real App Scenarios'),
          _ScenarioCard(
            title: 'Form Submit',
            subtitle: 'Success after save',
            onTap: () async {
              ZiStatusToast.loading('Saving your data...');
              await Future.delayed(const Duration(seconds: 2));
              ZiStatusToast.success(
                'Profile updated',
                subtitle: 'Your info is saved.',
              );
            },
          ),
          _ScenarioCard(
            title: 'Network Error',
            subtitle: 'Offline or API failure',
            onTap:
                () => ZiStatusToast.error(
                  'No internet connection',
                  subtitle: 'Check your connection and retry.',
                  duration: const Duration(seconds: 5),
                ),
          ),
          _ScenarioCard(
            title: 'Sync in Background',
            subtitle: 'Show loading, dismiss on done',
            onTap: () async {
              ZiStatusToast.loading('Syncing data...');
              await Future.delayed(const Duration(seconds: 3));
              ZiStatusToast.success('Sync complete');
            },
          ),
          _ScenarioCard(
            title: 'Delete Action',
            subtitle: 'Destructive confirmation feedback',
            onTap:
                () => ZiStatusToast.warning(
                  'Item deleted',
                  subtitle: 'This action cannot be undone.',
                ),
          ),
          _ScenarioCard(
            title: 'Feature Notice',
            subtitle: 'Upgrade or feature flag',
            onTap:
                () => ZiStatusToast.info(
                  'Pro feature',
                  subtitle: 'Upgrade to unlock this feature.',
                ),
          ),
        ],
      ),
    );
  }
}

// ─── PRIVATE WIDGETS ───────────────────────────────────────────────

class _SectionLabel extends StatelessWidget {
  final String label;
  const _SectionLabel(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 10),
      child: Text(
        label.toUpperCase(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: ZiColors.grayLight,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}

class _ToastRow extends StatelessWidget {
  final List<Widget> children;
  const _ToastRow({required this.children});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          children
              .expand((w) => [Expanded(child: w), const SizedBox(width: 10)])
              .toList()
            ..removeLast(),
    );
  }
}

class _ToastButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _ToastButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ZiColors.surface,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(height: 6),
              Text(
                label,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(color: ZiColors.heading),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ScenarioCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _ScenarioCard({
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: ZiColors.surface,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: ZiColors.heading,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: ZiColors.grayLight,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.play_arrow_rounded,
                  color: ZiColors.accent,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

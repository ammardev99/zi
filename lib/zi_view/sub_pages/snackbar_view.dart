import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class ZiSnackBarView extends StatefulWidget {
  const ZiSnackBarView({super.key});

  @override
  State<ZiSnackBarView> createState() => _ZiSnackBarViewState();
}

class _ZiSnackBarViewState extends State<ZiSnackBarView> {
  String position = "top";
  bool isSubInfo = false;

  @override
  Widget build(BuildContext context) {
    ZiStatusToast.init(context);
    return ZiScaffoldB(
      // appBar: ZiAppBarB(title: 'ZiToast — Use Cases'),
      body: ListView(
        children: [
          // const SectionDivider(label: 'Select Position', isComplete: true),
          // const SectionDivider(label: 'Select Type', isComplete: true),
          // const SectionDivider(label: 'Select variation', isComplete: true),
          // with sub info
          // Row(
          //   children: [
          //     ZiSwitchD(
          //       value: isSubInfo,
          //       onChanged:
          //           (value) => setState(() {
          //             isSubInfo = value;
          //           }),
          //     ),
          //     ZiRadioD(
          //       label: 'Top',
          //       value: 'top',
          //       groupValue: position,
          //       onChanged:
          //           (value) => setState(() {
          //             position = value;
          //           }),
          //     ),
          //     ziGap(10),
          //     ZiRadioD(
          //       label: 'Center',
          //       value: 'center',
          //       groupValue: position,
          //       onChanged:
          //           (value) => setState(() {
          //             position = value;
          //           }),
          //     ),
          //   ],
          // ),
          /// ── R0 · Status Toast (Modern) ─────────────────────
          const SectionDivider(
            label: 'Status Toast (Lightweight)',
            isComplete: true,
          ),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Success',
                icon: Icons.check_circle_outline,
                color: ZiColors.success,
                onTap:
                    () => ZiStatusToast.success(
                      'Saved successfully',
                      subtitle: 'All changes synced',
                    ),
              ),

              _SnackButton(
                label: 'Error',
                icon: Icons.error_outline,
                color: ZiColors.error,
                onTap:
                    () => ZiStatusToast.error(
                      'Upload failed',
                      subtitle: 'Please try again',
                    ),
              ),

              _SnackButton(
                label: 'Warning',
                icon: Icons.warning_amber_outlined,
                color: ZiColors.warning,
                onTap:
                    () => ZiStatusToast.warning(
                      'Low storage',
                      subtitle: 'Only 2GB left',
                    ),
              ),

              _SnackButton(
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
          // ── R1 · All types · snackbar ─────────────────────────────────
          const SectionDivider(label: 'Types — Snackbar', isComplete: true),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Success',
                icon: Icons.check_circle_outline,
                color: ZiColors.success,
                onTap:
                    () => ZiSnackBarD.success(
                      'File saved successfully',
                      context: context,
                    ),
              ),

              _SnackButton(
                label: 'Error',
                icon: Icons.error_outline,
                color: ZiColors.error,
                onTap:
                    () => ZiSnackBarD.error('Upload failed', context: context),
              ),

              _SnackButton(
                label: 'Warning',
                icon: Icons.warning_amber_outlined,
                color: ZiColors.warning,
                onTap:
                    () => ZiSnackBarD.warning(
                      'Storage running low',
                      context: context,
                    ),
              ),

              _SnackButton(
                label: 'Info',
                icon: Icons.info_outline,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.info(
                      'Syncing in background',
                      context: context,
                    ),
              ),

              _SnackButton(
                label: 'Alert',
                icon: Icons.notifications_active_outlined,
                color: ZiColors.primary, // or define alert color if needed
                onTap:
                    () => ZiSnackBarD.alert(
                      'Session expires in 5 min',
                      context: context,
                    ),
              ),

              _SnackButton(
                label: 'Grey',
                icon: Icons.save_outlined,
                color: ZiColors.gray,
                onTap: () => ZiSnackBarD.grey('Auto-saved', context: context),
              ),
            ],
          ),
          // ── R2 · All types · toast ────────────────────────────────────
          const SectionDivider(label: 'Types — Toast', isComplete: true),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Success',
                icon: Icons.check_circle_outline,
                color: ZiColors.success,
                onTap:
                    () => ZiSnackBarD.success(
                      'Saved!',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                    ),
              ),

              _SnackButton(
                label: 'Error',
                icon: Icons.error_outline,
                color: ZiColors.error,
                onTap:
                    () => ZiSnackBarD.error(
                      'Failed',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                    ),
              ),

              _SnackButton(
                label: 'Warning',
                icon: Icons.warning_amber_outlined,
                color: ZiColors.warning,
                onTap:
                    () => ZiSnackBarD.warning(
                      'Check input',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                    ),
              ),

              _SnackButton(
                label: 'Info',
                icon: Icons.info_outline,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.info(
                      'Tip: long press',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                    ),
              ),

              _SnackButton(
                label: 'Alert',
                icon: Icons.notifications_active_outlined,
                color: ZiColors.primary, // or ZiColors.alert if added
                onTap:
                    () => ZiSnackBarD.alert(
                      'New update',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                    ),
              ),

              _SnackButton(
                label: 'Grey',
                icon: Icons.save_outlined,
                color: ZiColors.gray,
                onTap:
                    () => ZiSnackBarD.grey(
                      'Drafted',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                    ),
              ),
            ],
          ),

          // ── R3 · All types · toast ────────────────────────────────────
          const SectionDivider(label: 'Positions', isComplete: true),
          const SectionDivider(label: 'Positions', isComplete: true),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Top',
                icon: Icons.vertical_align_top,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.info(
                      'Top position',
                      context: context,
                      position: ZiSnackBarDPosition.top,
                    ),
              ),

              _SnackButton(
                label: 'TopRight',
                icon: Icons.north_east,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.info(
                      'Top Right position',
                      context: context,
                      position: ZiSnackBarDPosition.topRight,
                    ),
              ),

              _SnackButton(
                label: 'Center',
                icon: Icons.crop_square,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.info(
                      'Center position',
                      context: context,
                      position: ZiSnackBarDPosition.center,
                    ),
              ),

              _SnackButton(
                label: 'Bottom',
                icon: Icons.vertical_align_bottom,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.info(
                      'Bottom position',
                      context: context,
                      position: ZiSnackBarDPosition.bottom,
                    ),
              ),
            ],
          ),

          const SectionDivider(label: 'Positions — Toast', isComplete: true),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Top Toast',
                icon: Icons.arrow_upward,
                color: ZiColors.success,
                onTap:
                    () => ZiSnackBarD.success(
                      'Toast Top',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                      position: ZiSnackBarDPosition.top,
                    ),
              ),

              _SnackButton(
                label: 'Bottom Toast',
                icon: Icons.arrow_downward,
                color: ZiColors.success,
                onTap:
                    () => ZiSnackBarD.success(
                      'Toast Bottom',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                      position: ZiSnackBarDPosition.bottom,
                    ),
              ),
            ],
          ),

          // ── R4 · Positions ────────────────────────────────────────────
          const SectionDivider(label: 'loading', isComplete: true),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Loading Snackbar',
                icon: Icons.sync,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.loading(
                      'Uploading file...',
                      context: context,
                    ),
              ),

              _SnackButton(
                label: 'Loading Toast',
                icon: Icons.hourglass_top,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.loading(
                      'Processing...',
                      context: context,
                      variant: ZiSnackBarDVariant.toast,
                    ),
              ),

              _SnackButton(
                label: 'Dismiss',
                icon: Icons.close,
                color: ZiColors.gray,
                onTap: () => ZiSnackBarD.dismiss(),
              ),
            ],
          ),

          const SectionDivider(label: 'Subtitle', isComplete: true),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Success',
                icon: Icons.check_circle_outline,
                color: ZiColors.success,
                onTap:
                    () => ZiSnackBarD.success(
                      'Invoice sent',
                      context: context,
                      subtitle: 'Delivered to client@mail.com',
                    ),
              ),

              _SnackButton(
                label: 'Error',
                icon: Icons.error_outline,
                color: ZiColors.error,
                onTap:
                    () => ZiSnackBarD.error(
                      'Upload failed',
                      context: context,
                      subtitle: 'Max file size is 5 MB',
                    ),
              ),

              _SnackButton(
                label: 'Warning (Toast)',
                icon: Icons.warning_amber_outlined,
                color: ZiColors.warning,
                onTap:
                    () => ZiSnackBarD.warning(
                      'Storage low',
                      context: context,
                      subtitle: '2 GB remaining',
                      variant: ZiSnackBarDVariant.toast,
                    ),
              ),

              _SnackButton(
                label: 'Loading',
                icon: Icons.sync,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.loading(
                      'Uploading',
                      context: context,
                      subtitle: 'This may take a moment',
                    ),
              ),
            ],
          ),

          const SectionDivider(label: 'Action Label', isComplete: true),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Undo',
                icon: Icons.undo,
                color: ZiColors.gray,
                onTap:
                    () => ZiSnackBarD.grey(
                      'Item deleted',
                      context: context,
                      actionLabel: 'UNDO',
                      onAction: () => debugPrint('Undo!'),
                    ),
              ),

              _SnackButton(
                label: 'Retry',
                icon: Icons.refresh,
                color: ZiColors.error,
                onTap:
                    () => ZiSnackBarD.error(
                      'Upload failed',
                      context: context,
                      actionLabel: 'RETRY',
                      onAction: () => debugPrint('Retry!'),
                    ),
              ),

              _SnackButton(
                label: 'View',
                icon: Icons.visibility_outlined,
                color: ZiColors.success,
                onTap:
                    () => ZiSnackBarD.success(
                      'Report ready',
                      context: context,
                      actionLabel: 'VIEW',
                      onAction: () => debugPrint('View!'),
                    ),
              ),

              _SnackButton(
                label: 'Later',
                icon: Icons.schedule,
                color: ZiColors.primary, // better if ZiColors.alert exists
                onTap:
                    () => ZiSnackBarD.alert(
                      'New version',
                      context: context,
                      actionLabel: 'LATER',
                      onAction: () => debugPrint('Later'),
                    ),
              ),
            ],
          ), // ── R7 · Style overrides ──────────────────────────────────────

          const SectionDivider(label: 'Style Override', isComplete: true),

          _ToastRow(
            children: [
              _SnackButton(
                label: 'Pill Shape',
                icon: Icons.rounded_corner,
                color: ZiColors.info,
                onTap:
                    () => ZiSnackBarD.show(
                      context: context,
                      message: 'Pill style',
                      type: ZiSnackBarDType.info,
                      style: ZiSnackBarDGet.styleOf(
                        ZiSnackBarDType.info,
                      ).copyWith(borderRadius: BorderRadius.circular(32)),
                    ),
              ),

              _SnackButton(
                label: 'Dark Toast',
                icon: Icons.dark_mode,
                color: ZiColors.gray,
                onTap:
                    () => ZiSnackBarD.show(
                      context: context,
                      message: 'Dark mode',
                      subtitle: 'Override example',
                      variant: ZiSnackBarDVariant.toast,
                      style: const ZiSnackBarDStyle(
                        backgroundColor: Color(0xFF1C1C1E),
                        borderColor: Color(0xFF3A3A3C),
                        iconColor: Color(0xFF63E6BE),
                        textColor: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                    ),
              ),

              _SnackButton(
                label: 'Wide Toast',
                icon: Icons.width_full,
                color: ZiColors.warning,
                onTap:
                    () => ZiSnackBarD.show(
                      context: context,
                      message: 'Max-width override',
                      variant: ZiSnackBarDVariant.toast,
                      type: ZiSnackBarDType.warning,
                      style: ZiSnackBarDGet.styleOf(
                        ZiSnackBarDType.warning,
                      ).copyWith(maxWidth: 520),
                    ),
              ),

              _SnackButton(
                label: 'No Border',
                icon: Icons.crop_square,
                color: ZiColors.gray,
                onTap:
                    () => ZiSnackBarD.show(
                      context: context,
                      message: 'No border shadow only',
                      type: ZiSnackBarDType.grey,
                      style: ZiSnackBarDGet.styleOf(
                        ZiSnackBarDType.grey,
                      ).copyWith(
                        borderColor: Colors.transparent,
                        elevation: 12,
                      ),
                    ),
              ),
            ],
          ),

          const Divider(), Divider(),
          // Do later
          const SectionDivider(label: 'Style Status', isComplete: true),

          Divider(),
          _SectionLabel('Status Types'),
          _ToastRow(
            children: [
              _SnackButton(
                label: 'Success',
                icon: Icons.check_circle_outline,
                color: const Color(0xFF16A34A),
                onTap:
                    () => ZiStatusToast.success(
                      'Changes saved',
                      subtitle: 'All data has been updated.',
                    ),
              ),
              _SnackButton(
                label: 'Error',
                icon: Icons.cancel_outlined,
                color: const Color(0xFFDC2626),
                onTap:
                    () => ZiStatusToast.error(
                      'Something went wrong',
                      subtitle: 'Please try again.',
                    ),
              ),
              _SnackButton(
                label: 'Warning',
                icon: Icons.warning_amber_outlined,
                color: const Color(0xFFD97706),
                onTap:
                    () => ZiStatusToast.warning(
                      'Unsaved changes',
                      subtitle: 'You have pending edits.',
                    ),
              ),
              _SnackButton(
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
              _SnackButton(
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
              _SnackButton(
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
              _SnackButton(
                label: 'Top',
                icon: Icons.vertical_align_top_rounded,
                color: ZiColors.accent,
                onTap:
                    () => ZiStatusToast.info(
                      'Showing at top',
                      position: ZiStatusToastPosition.top,
                    ),
              ),
              _SnackButton(
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

class _SnackButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _SnackButton({
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

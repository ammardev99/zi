import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class FeedOverViewPage extends StatelessWidget {
  const FeedOverViewPage({super.key});

  // ─── USE CASES ────────────────────────────────────────────────────

  // 1. Simple info dialog
  void _showSimpleDialog(BuildContext context) {
    ziShowFeedOver(
      context,
      title: 'What is zi_core?',
      body: const Text(
        'zi_core is a scalable SaaS component library for Flutter. '
        'It provides reusable UI components, tokens and services '
        'designed to work across 10+ apps.',
      ),
    );
  }

  // 2. Bottom sheet — list selection
  void _showBottomSheet(BuildContext context) {
    ziShowFeedOver(
      context,
      type: ZiFeedOverType.bottomSheet,
      title: 'Choose Category',
      body: Column(
        children:
            ['Design', 'Development', 'Marketing', 'Finance', 'HR']
                .map(
                  (item) => ListTile(
                    title: Text(item),
                    trailing: const Icon(Icons.chevron_right, size: 18),
                    onTap: () => Navigator.pop(context, item),
                  ),
                )
                .toList(),
      ),
    );
  }

  // 3. Elevated sheet — anchored to bottom, dialog engine (web-safe)
  void _showElevatedSheet(BuildContext context) {
    ziShowFeedOver(
      context,
      type: ZiFeedOverType.elevatedSheet,
      title: 'Quick Filters',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ZiSwitchB(label: 'Active only', value: true, onChanged: (_) {}),
          ZiSwitchB(label: 'Show archived', value: false, onChanged: (_) {}),
          ZiSwitchB(label: 'My items only', value: false, onChanged: (_) {}),
        ],
      ),
      footer: ZiButtonB(
        label: 'Apply Filters',
        variant: ZiButtonVariantB.primary,
        action: () => Navigator.pop(context),
      ),
    );
  }

  // 4. With custom header widget
  void _showWithHeader(BuildContext context) {
    ziShowFeedOver(
      context,
      title: 'Team Members',
      header: Row(
        children: [
          const CircleAvatar(radius: 14, child: Text('3')),
          const SizedBox(width: 8),
          Text('3 active members', style: ZiTypoStyles.caption),
        ],
      ),
      body: Column(
        children:
            ['Alice — Admin', 'Bob — Editor', 'Carol — Viewer']
                .map(
                  (m) => ListTile(
                    leading: const CircleAvatar(radius: 16),
                    title: Text(m),
                  ),
                )
                .toList(),
      ),
    );
  }

  // 5. With footer action buttons
  void _showWithFooter(BuildContext context) {
    ziShowFeedOver(
      context,
      title: 'Export Data',
      body: heroSectionContent(
        title: 'Export your data',
        content:
            'This will generate a CSV file of all records. '
            'The file will be available in your downloads folder.',
      ),
      footer: Row(
        children: [
          Expanded(
            child: ZiButtonB(
              label: 'Cancel',
              variant: ZiButtonVariantB.secondary,
              action: () => Navigator.pop(context),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ZiButtonB(
              label: 'Export CSV',
              variant: ZiButtonVariantB.primary,
              action: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }

  // 6. Form inside dialog — keyboard-aware
  void _showFormDialog(BuildContext context) {
    ziShowFeedOver(
      context,
      title: 'Add Note',
      dismissOutside: false,
      body: Column(
        children: [
          ZiInput(label: 'Title', hint: 'Enter title'),
          const SizedBox(height: 12),
          ZiInput(
            label: 'Note',
            hint: 'Write your note...',
            // maxLines: 4,
          ),
          const SizedBox(height: 12),
          // ignore: deprecated_member_use
          ZiSelect(
            label: 'Category',
            items: const ['Work', 'Personal', 'Ideas'],
          ),
        ],
      ),
      footer: ZiButtonB(
        label: 'Save Note',
        variant: ZiButtonVariantB.primary,
        action: () => Navigator.pop(context),
      ),
    );
  }

  // 7. Centered title — confirmation-style
  void _showCenteredTitle(BuildContext context) {
    ziShowFeedOver(
      context,
      title: 'Session Expired',
      titleAlign: TextAlign.center,
      showCloseButton: false,
      dismissOutside: false,
      body: heroSectionContent(
        title: 'You have been logged out',
        content:
            'Your session has expired for security reasons. '
            'Please log in again to continue.',
      ),
      footer: ZiButtonB(
        label: 'Log In Again',
        variant: ZiButtonVariantB.primary,
        action: () => Navigator.pop(context),
      ),
    );
  }

  // 8. Return value from dialog
  Future<void> _showWithReturnValue(BuildContext context) async {
    final result = await ziShowFeedOver<String>(
      context,
      title: 'Pick Status',
      body: Column(
        children:
            ['Active', 'Paused', 'Archived']
                .map(
                  (s) => ListTile(
                    title: Text(s),
                    onTap: () => Navigator.pop(context, s),
                  ),
                )
                .toList(),
      ),
    );

    if (result != null && context.mounted) {
      ZiSnackBarD.success('Selected: $result');
    }
  }

  // 9. Tablet size override
  void _showTabletSize(BuildContext context) {
    ziShowFeedOver(
      context,
      title: 'Wide Dialog',
      size: ZiFeedOverSize.tablet,
      body: heroSectionContent(
        title: 'Tablet-width layout',
        content:
            'This dialog is constrained to tablet max-width (540px) '
            'regardless of screen size. Useful for web and desktop.',
      ),
    );
  }

  // 10. No dividers — clean minimal style
  void _showNoDividers(BuildContext context) {
    ziShowFeedOver(
      context,
      title: 'Minimal Style',
      showHeaderDivider: false,
      showFooterDivider: false,
      body: const Text(
        'No dividers between title, body and footer. '
        'Useful for compact inline dialogs.',
      ),
      footer: ZiButtonB(
        label: 'Got it',
        variant: ZiButtonVariantB.text,
        action: () => Navigator.pop(context),
      ),
    );
  }

  // ─── USE CASE DATA ─────────────────────────────────────────────────

  List<_UseCase> get _useCases => [
    _UseCase(
      label: 'Simple Dialog',
      note: 'type: dialog • title + body',
      icon: Icons.open_in_new_rounded,
      onTap: _showSimpleDialog,
    ),
    _UseCase(
      label: 'Bottom Sheet',
      note: 'type: bottomSheet • list pick',
      icon: Icons.vertical_align_bottom_rounded,
      onTap: _showBottomSheet,
    ),
    _UseCase(
      label: 'Elevated Sheet',
      note: 'type: elevatedSheet • web-safe',
      icon: Icons.layers_rounded,
      onTap: _showElevatedSheet,
    ),
    _UseCase(
      label: 'Custom Header',
      note: 'header: widget slot',
      icon: Icons.view_agenda_outlined,
      onTap: _showWithHeader,
    ),
    _UseCase(
      label: 'With Footer',
      note: 'footer: action row',
      icon: Icons.border_bottom_rounded,
      onTap: _showWithFooter,
    ),
    _UseCase(
      label: 'Form Dialog',
      note: 'keyboard-aware • dismissOutside: false',
      icon: Icons.edit_note_rounded,
      onTap: _showFormDialog,
    ),
    _UseCase(
      label: 'Centered Title',
      note: 'titleAlign: center • no close btn',
      icon: Icons.format_align_center_rounded,
      onTap: _showCenteredTitle,
    ),
    _UseCase(
      label: 'Return Value',
      note: 'await ziShowFeedOver<String>',
      icon: Icons.output_rounded,
      onTap: _showWithReturnValue,
    ),
    _UseCase(
      label: 'Tablet Width',
      note: 'size: ZiFeedOverSize.tablet',
      icon: Icons.tablet_rounded,
      onTap: _showTabletSize,
    ),
    _UseCase(
      label: 'No Dividers',
      note: 'showHeaderDivider: false',
      icon: Icons.remove_rounded,
      onTap: _showNoDividers,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      appBar: ZiAppBarB(title: 'ZiFeedOver — Use Cases'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tap any card to preview the overlay type',
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: ZiColors.grayLight),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemCount: _useCases.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (context, i) {
                final uc = _useCases[i];
                return _UseCaseCard(
                  useCase: uc,
                  index: i + 1,
                  onTap: () => uc.onTap(context),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ─── PRIVATE TYPES ──────────────────────────────────────────────────

class _UseCase {
  final String label;
  final String note;
  final IconData icon;
  final void Function(BuildContext) onTap;

  const _UseCase({
    required this.label,
    required this.note,
    required this.icon,
    required this.onTap,
  });
}

class _UseCaseCard extends StatelessWidget {
  final _UseCase useCase;
  final int index;
  final VoidCallback onTap;

  const _UseCaseCard({
    required this.useCase,
    required this.index,
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
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: ZiColors.accent.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(useCase.icon, color: ZiColors.accent, size: 18),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      useCase.label,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: ZiColors.heading,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      useCase.note,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: ZiColors.grayLight,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.play_arrow_rounded, color: ZiColors.accent, size: 18),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class ElevatedActionsView extends StatelessWidget {
  const ElevatedActionsView({super.key});

  // ─── USE CASE HELPERS ───────────────────────────────────────────

  void _showPostActions(BuildContext context) {
    ZiElevatedActions.show(
      context: context,
      child: ZiBottomActionList(
        title: 'Post Actions',
        actions: [
          // ZiActionItem
          ZiActions.edit(() => _log('Edit post')),
          ZiActions.duplicate(() => _log('Duplicate post')),
          ZiActions.share(() => _log('Share post')),
          ZiActions.archive(() => _log('Archive post')),
          ZiActions.delete(() => _log('Delete post')),
        ],
      ),
    );
  }

  void _showFileActions(BuildContext context) {
    ZiElevatedActions.show(
      context: context,
      child: ZiBottomActionGrid(
        title: 'File Actions',
        columns: 4,
        actions: [
          ZiActions.open(() => _log('Open file')),
          ZiActions.download(() => _log('Download file')),
          ZiActions.share(() => _log('Share file')),
          ZiActions.copy(() => _log('Copy link')),
          ZiActions.move(() => _log('Move file')),
          ZiActions.export(() => _log('Export file')),
          ZiActions.archive(() => _log('Archive file')),
          ZiActions.delete(() => _log('Delete file')),
        ],
      ),
    );
  }

  void _showUserActions(BuildContext context) {
    ZiElevatedActions.show(
      context: context,
      child: ZiBottomActionList(
        title: 'User Management',
        actions: [
          ZiActions.view(() => _log('View profile')),
          ZiActions.assign(() => _log('Assign role')),
          ZiActions.lock(() => _log('Lock account')),
          ZiActions.block(() => _log('Block user')),
          ZiActions.report(() => _log('Report user')),
        ],
      ),
    );
  }

  void _showTaskActions(BuildContext context) {
    ZiElevatedActions.show(
      context: context,
      child: ZiBottomActionGrid(
        title: 'Task Actions',
        columns: 3,
        actions: [
          ZiActions.markDone(() => _log('Mark done')),
          ZiActions.assign(() => _log('Assign task')),
          ZiActions.reorder(() => _log('Reorder')),
          ZiActions.edit(() => _log('Edit task')),
          ZiActions.duplicate(() => _log('Duplicate task')),
          ZiActions.delete(() => _log('Delete task')),
        ],
      ),
    );
  }

  void _showProductActions(BuildContext context) {
    ZiElevatedActions.show(
      context: context,
      child: ZiBottomActionList(
        title: 'Product Actions',
        actions: [
          ZiActions.preview(() => _log('Preview product')),
          ZiActions.edit(() => _log('Edit product')),
          ZiActions.duplicate(() => _log('Duplicate product')),
          ZiActions.hide(() => _log('Hide from store')),
          ZiActions.archive(() => _log('Archive product')),
          ZiActions.delete(() => _log('Delete product')),
        ],
      ),
    );
  }

  void _showAdminActions(BuildContext context) {
    ZiElevatedActions.show(
      context: context,
      child: ZiBottomActionGrid(
        title: 'Admin Controls',
        columns: 4,
        actions: [
          ZiActions.enable(() => _log('Enable')),
          ZiActions.disable(() => _log('Disable')),
          ZiActions.lock(() => _log('Lock')),
          ZiActions.unlock(() => _log('Unlock')),
          ZiActions.export(() => _log('Export data')),
          ZiActions.archive(() => _log('Archive')),
          ZiActions.restore(() => _log('Restore')),
          ZiActions.delete(() => _log('Delete')),
        ],
      ),
    );
  }

  void _showMediaActions(BuildContext context) {
    ZiElevatedActions.show(
      context: context,
      child: ZiBottomActionGrid(
        title: 'Media',
        columns: 3,
        actions: [
          ZiActions.preview(() => _log('Preview')),
          ZiActions.download(() => _log('Download')),
          ZiActions.share(() => _log('Share')),
          ZiActions.copy(() => _log('Copy link')),
          ZiActions.move(() => _log('Move to folder')),
          ZiActions.delete(() => _log('Delete')),
        ],
      ),
    );
  }

  void _showFavoriteActions(BuildContext context) {
    ZiElevatedActions.show(
      context: context,
      child: ZiBottomActionList(
        title: 'Content Options',
        actions: [
          ZiActions.favorite(() => _log('Add to favorites')),
          ZiActions.markDone(() => _log('Mark as read')),
          ZiActions.share(() => _log('Share')),
          ZiActions.copy(() => _log('Copy link')),
          ZiActions.report(() => _log('Report content')),
        ],
      ),
    );
  }

  void _log(String action) {
    debugPrint('[ZiActions] $action');
  }

  // ─── USE CASE DATA ───────────────────────────────────────────────

  List<_UseCase> get _useCases => [
    _UseCase(
      label: 'Post\nActions',
      icon: Icons.article_outlined,
      note: 'List • CRUD + share',
      onTap: _showPostActions,
    ),
    _UseCase(
      label: 'File\nActions',
      icon: Icons.folder_outlined,
      note: 'Grid 4col • files',
      onTap: _showFileActions,
    ),
    _UseCase(
      label: 'User\nMgmt',
      icon: Icons.person_outlined,
      note: 'List • security',
      onTap: _showUserActions,
    ),
    _UseCase(
      label: 'Task\nActions',
      icon: Icons.task_alt_outlined,
      note: 'Grid 3col • tasks',
      onTap: _showTaskActions,
    ),
    _UseCase(
      label: 'Product\nActions',
      icon: Icons.storefront_outlined,
      note: 'List • ecommerce',
      onTap: _showProductActions,
    ),
    _UseCase(
      label: 'Admin\nControls',
      icon: Icons.admin_panel_settings_outlined,
      note: 'Grid 4col • admin',
      onTap: _showAdminActions,
    ),
    _UseCase(
      label: 'Media\nActions',
      icon: Icons.perm_media_outlined,
      note: 'Grid 3col • files',
      onTap: _showMediaActions,
    ),
    _UseCase(
      label: 'Favorites\n& Status',
      icon: Icons.star_outline,
      note: 'List • content',
      onTap: _showFavoriteActions,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      // appBar: ZiAppBarB(title: 'Elevated Actions — Use Cases'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tap any card to preview the action sheet',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: ZiColors.grayLight),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: _useCases.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.6,
                ),
                itemBuilder: (context, i) {
                  final uc = _useCases[i];
                  return _UseCaseCard(
                    useCase: uc,
                    onTap: () => uc.onTap(context),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── PRIVATE WIDGETS ────────────────────────────────────────────────

class _UseCase {
  final String label;
  final IconData icon;
  final String note;
  final void Function(BuildContext) onTap;

  const _UseCase({
    required this.label,
    required this.icon,
    required this.note,
    required this.onTap,
  });
}

class _UseCaseCard extends StatelessWidget {
  final _UseCase useCase;
  final VoidCallback onTap;

  const _UseCaseCard({required this.useCase, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ZiColors.surface,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(useCase.icon, color: ZiColors.primary, size: 22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    useCase.label,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: ZiColors.heading,
                      height: 1.25,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    useCase.note,
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall?.copyWith(color: ZiColors.grayLight),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

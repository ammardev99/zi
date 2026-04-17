import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class IconsView extends StatelessWidget {
  const IconsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* =========================
               NAVIGATION
            ========================= */
            const SectionDivider(label: "Navigation", isComplete: true),
            _iconRow([
              ZiIcons.menu,
              ZiIcons.home,
              ZiIcons.dashboard,
              ZiIcons.back,
              ZiIcons.forward,
              ZiIcons.close,
            ]),

            /* =========================
               USERS
            ========================= */
            const SectionDivider(label: "Users", isComplete: true),
            _iconRow([
              ZiIcons.user,
              ZiIcons.users,
              ZiIcons.profile,
              ZiIcons.addUser,
              ZiIcons.removeUser,
            ]),

            /* =========================
               ACTIONS
            ========================= */
            const SectionDivider(label: "Actions", isComplete: true),
            _iconRow([
              ZiIcons.add,
              ZiIcons.edit,
              ZiIcons.delete,
              ZiIcons.save,
              ZiIcons.search,
              ZiIcons.filter,
            ]),

            /* =========================
               STATUS
            ========================= */
            const SectionDivider(label: "Status", isComplete: true),
            _iconRow([
              ZiIcons.success,
              ZiIcons.error,
              ZiIcons.warning,
              ZiIcons.info,
            ], colored: true),

            /* =========================
               COMMUNICATION
            ========================= */
            const SectionDivider(label: "Communication", isComplete: true),
            _iconRow([
              ZiIcons.email,
              ZiIcons.phone,
              ZiIcons.chat,
              ZiIcons.notifications,
            ]),

            /* =========================
               FILES
            ========================= */
            const SectionDivider(label: "Files & Content", isComplete: true),
            _iconRow([
              ZiIcons.file,
              ZiIcons.folder,
              ZiIcons.image,
              ZiIcons.attachment,
            ]),

            /* =========================
               ANALYTICS
            ========================= */
            const SectionDivider(label: "Analytics", isComplete: true),
            _iconRow([
              ZiIcons.analytics,
              ZiIcons.chart,
              ZiIcons.money,
              ZiIcons.wallet,
            ]),

            /* =========================
               VARIATIONS (IMPORTANT)
            ========================= */
            const SectionDivider(label: "Sizes", isComplete: true),
            Row(
              children: const [
                ZiIcon(icon: ZiIcons.star, size: 16),
                SizedBox(width: 12),
                ZiIcon(icon: ZiIcons.star, size: 24),
                SizedBox(width: 12),
                ZiIcon(icon: ZiIcons.star, size: 32),
                SizedBox(width: 12),
                ZiIcon(icon: ZiIcons.star, size: 40),
              ],
            ),

            const SizedBox(height: 16),

            const SectionDivider(label: "Colors", isComplete: true),
            Row(
              children: const [
                ZiIcon(icon: ZiIcons.info, color: ZiColors.info),
                SizedBox(width: 12),
                ZiIcon(icon: ZiIcons.success, color: ZiColors.success),
                SizedBox(width: 12),
                ZiIcon(icon: ZiIcons.warning, color: ZiColors.warning),
                SizedBox(width: 12),
                ZiIcon(icon: ZiIcons.error, color: ZiColors.error),
              ],
            ),

            const SizedBox(height: 16),

            const SectionDivider(label: "Mixed Usage", isComplete: true),
            Row(
              children: [
                ZiIcon(icon: ZiIcons.cart, size: 28, color: ZiColors.primary),
                const SizedBox(width: 12),
                const ZiIcon(icon: ZiIcons.user, size: 24),
                const SizedBox(width: 12),
                const ZiIcon(
                  icon: ZiIcons.notifications,
                  color: ZiColors.warning,
                ),
                const SizedBox(width: 12),
                const ZiIcon(icon: ZiIcons.settings, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /* =========================
     REUSABLE ROW
  ========================= */
  Widget _iconRow(List<IconData> icons, {bool colored = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Wrap(
        spacing: 16,
        runSpacing: 12,
        children:
            icons.map((icon) {
              return ZiIcon(
                icon: icon,
                size: 24,
                color: colored ? _getColor(icon) : Colors.grey,
              );
            }).toList(),
      ),
    );
  }

  Color _getColor(IconData icon) {
    if (icon == ZiIcons.success) return ZiColors.success;
    if (icon == ZiIcons.error) return ZiColors.error;
    if (icon == ZiIcons.warning) return ZiColors.warning;
    if (icon == ZiIcons.info) return ZiColors.info;
    return ZiColors.border;
  }
}

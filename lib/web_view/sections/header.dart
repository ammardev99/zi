import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    if (ZiBreakpoints.isDesktop(context)) {
      return _DesktopHeader();
    } else if (ZiBreakpoints.isTablet(context)) {
      return _TabletHeader();
    } else {
      return _MobileHeader();
    }
  }
}


class _DesktopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _BaseHeaderLayout(
      isVertical: false,
      titleSize: ZiTypoStyles.titleXl,
      showFullMeta: true,
    );
  }
}
class _TabletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _BaseHeaderLayout(
      isVertical: false,
      titleSize: ZiTypoStyles.titleLg,
      showFullMeta: false,
    );
  }
}
class _MobileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _BaseHeaderLayout(
      isVertical: true,
      titleSize: ZiTypoStyles.titleLg,
      showFullMeta: false,
    );
  }
}
class _BaseHeaderLayout extends StatelessWidget {
  final bool isVertical;
  final TextStyle titleSize;
  final bool showFullMeta;

  const _BaseHeaderLayout({
    required this.isVertical,
    required this.titleSize,
    required this.showFullMeta,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: isVertical ? _buildMobile() : _buildDesktop(),
    );
  }

  // ---------------- MOBILE ----------------
  Widget _buildMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ZiSvgIcon(path: 'assets/logo.svg', size: 60),
            ziGap(10),
            Expanded(
              child: Text(
                "Zi_Core Development Package",
                style: titleSize,
              ),
            ),
          ],
        ),

        ziGap(8),

        Text(
          "Application development ecosystem | v1.0.0",
          style: ZiTypoStyles.subHeading.copyWith(color: ZiColors.gray),
        ),

        ziGap(8),

        _buildStars(),

        ziGap(6),

        Wrap(
          spacing: 6,
          children: const [
            Text("Android"),
            Text("|"),
            Text("iOS"),
            Text("|"),
            Text("Web"),
            Text("|"),
            Text("Windows"),
          ],
        ),

        ziGap(8),

        Text(
          "Built with Zi_Core Libraries. Manage on GitHub and we serve UI/UX ecosystem.",
          style: ZiTypoStyles.inputHint,
        ),
      ],
    );
  }

  // ---------------- DESKTOP / TABLET ----------------
  Widget _buildDesktop() {
    return Column(
      children: [
        Row(
          children: [
            ZiSvgIcon(path: 'assets/logo.svg', size: 80),
            ziGap(10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Zi_Core Development Package",
                  style: titleSize,
                ),
                ziGap(6),
                Text(
                  "Application development ecosystem | v1.0.0",
                  style: ZiTypoStyles.subHeading.copyWith(
                    color: ZiColors.gray,
                  ),
                ),
              ],
            ),

            const Spacer(),

            _buildMeta(),
          ],
        ),

        ziGap(10),

        Row(
          children: [
            Expanded(
              child: Text(
                "Built with Zi_Core Libraries. Manage on GitHub and we serve UI/UX, CX, DX ecosystem.",
                style: ZiTypoStyles.inputHint,
              ),
            ),
          ],
        ),

        ziGap(8),
        Divider(color: ZiColors.border),
      ],
    );
  }

  Widget _buildStars() {
    return Row(
      children: List.generate(5, (i) {
        return Icon(
          Icons.star,
          size: 18,
          color: i < 4 ? ZiColors.primary : ZiColors.grayLight,
        );
      }),
    );
  }

  Widget _buildMeta() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            _buildStars(),
            ziGap(6),
            const Text("4k+"),
          ],
        ),
        ziGap(6),
        if (showFullMeta)
          const Text(
            "Android | iOS | Web | Windows",
          ),
      ],
    );
  }
}
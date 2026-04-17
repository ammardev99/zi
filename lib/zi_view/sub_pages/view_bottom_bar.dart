import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

const List<TabItem> items = [
  TabItem(icon: Icons.home, title: 'Home'),
  TabItem(icon: Icons.search_sharp, title: 'Shop'),
  TabItem(icon: Icons.favorite_border, title: 'Wishlist'),
  TabItem(icon: Icons.shopping_cart_outlined, title: 'Cart'),
  TabItem(icon: Icons.account_box, title: 'profile'),
];

class ViewBottomBars extends StatefulWidget {
  const ViewBottomBars({super.key});

  @override
  State<ViewBottomBars> createState() => _ViewBottomBarsState();
}

class _ViewBottomBarsState extends State<ViewBottomBars> {
  int visit = 0;

  final double gap = 30;

  Color get bg => ZiColors.primary;
  Color get unselected => ZiColors.grayLight;
  Color get selected => Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          children: [
            /// =========================
            /// OUTSIDE (FLOATING / NOTCH)
            /// =========================
            const SectionDivider(label: "Inspired - Outside", isComplete: true),

            _bar(
              BottomBarInspiredOutside(
                items: items,
                backgroundColor: bg,
                color: unselected,
                colorSelected: selected,
                indexSelected: visit,
                top: -25,
                animated: true,
                itemStyle: ItemStyle.hexagon,
                chipStyle: const ChipStyle(drawHexagon: true),
                onTap: _onTap,
              ),
            ),

            _bar(
              BottomBarInspiredOutside(
                items: items,
                backgroundColor: bg,
                color: unselected,
                colorSelected: selected,
                indexSelected: visit,
                top: -28,
                itemStyle: ItemStyle.circle,
                chipStyle: const ChipStyle(
                  notchSmoothness: NotchSmoothness.sharpEdge,
                ),
                onTap: _onTap,
              ),
            ),

            _bar(
              BottomBarInspiredOutside(
                items: items,
                backgroundColor: bg,
                color: unselected,
                colorSelected: selected,
                indexSelected: visit,
                top: -28,
                itemStyle: ItemStyle.circle,
                chipStyle: const ChipStyle(
                  notchSmoothness: NotchSmoothness.verySmoothEdge,
                ),
                onTap: _onTap,
              ),
            ),

            /// =========================
            /// INSIDE (EMBEDDED)
            /// =========================
            const SectionDivider(label: "Inspired - Inside", isComplete: true),

            _bar(
              BottomBarInspiredInside(
                items: items,
                backgroundColor: bg,
                color: unselected,
                colorSelected: selected,
                indexSelected: visit,
                chipStyle: const ChipStyle(convexBridge: true),
                itemStyle: ItemStyle.circle,
                onTap: _onTap,
              ),
            ),

            _bar(
              BottomBarInspiredInside(
                items: items,
                backgroundColor: bg,
                color: unselected,
                colorSelected: selected,
                indexSelected: visit,
                chipStyle: const ChipStyle(isHexagon: true, convexBridge: true),
                itemStyle: ItemStyle.hexagon,
                onTap: _onTap,
              ),
            ),

            /// =========================
            /// CREATIVE (HIGHLIGHT / FLOATING)
            /// =========================
            const SectionDivider(label: "Creative Bars", isComplete: true),

            _bar(
              BottomBarCreative(
                items: items,
                backgroundColor: ZiColors.primarySoft,
                color: ZiColors.border,
                colorSelected: ZiColors.primary,
                indexSelected: visit,
                onTap: _onTap,
              ),
            ),

            _bar(
              BottomBarCreative(
                items: items,
                backgroundColor: ZiColors.primarySoft,
                color: ZiColors.border,
                colorSelected: ZiColors.primary,
                indexSelected: visit,
                isFloating: true,
                onTap: _onTap,
              ),
            ),

            _bar(
              BottomBarCreative(
                items: items,
                backgroundColor: ZiColors.primarySoft,
                color: ZiColors.border,
                colorSelected: ZiColors.primary,
                indexSelected: visit,
                isFloating: true,
                highlightStyle: const HighlightStyle(
                  sizeLarge: true,
                  elevation: 3,
                ),
                onTap: _onTap,
              ),
            ),

            /// =========================
            /// FANCY / ANIMATED
            /// =========================
            const SectionDivider(label: "Fancy / Animated", isComplete: true),

            _bar(
              BottomBarInspiredFancy(
                items: items,
                backgroundColor: ZiColors.skeleton,
                color: ZiColors.textMuted,
                colorSelected: ZiColors.primary,
                indexSelected: visit,
                onTap: _onTap,
              ),
            ),

            _bar(
              BottomBarInspiredFancy(
                items: items,
                backgroundColor: ZiColors.skeleton,
                color: ZiColors.textMuted,
                colorSelected: ZiColors.primary,
                indexSelected: visit,
                styleIconFooter: StyleIconFooter.dot,
                onTap: _onTap,
              ),
            ),

            /// =========================
            /// DIVIDER / UTILITY
            /// =========================
            const SectionDivider(label: "Divider / Utility", isComplete: true),

            _bar(
              BottomBarDivider(
                items: items,
                backgroundColor: Colors.amber,
                color: Colors.grey,
                colorSelected: ZiColors.primary,
                indexSelected: visit,
                styleDivider: StyleDivider.bottom,
                onTap: _onTap,
              ),
            ),

            /// =========================
            /// YOUR DESIGN SYSTEM
            /// =========================
            const SectionDivider(label: "Zi Bottom Bars", isComplete: true),

            _bar(
              ZiBottomBar(
                items: items,
                currentIndex: visit,
                onTap: _onTap,
                type: ZiBottomBarType.fancy,
                style: ZiBottomBarStyle.defaultStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(int index) => setState(() => visit = index);

  Widget _bar(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: child,
    );
  }
}

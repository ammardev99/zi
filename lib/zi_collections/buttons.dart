import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class ViewButtons extends StatelessWidget {
  const ViewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          /// =========================
          /// VARIANTS
          /// =========================
          const SectionDivider(label: "Gradient Variants", isComplete: true),

          const SizedBox(height: 8),
          const Text(
            "primary, secondary, outline, destructive, text, inline, icon, iconFillCircular, chip",
          ),

          const SizedBox(height: 12),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ZiButtonB(
                label: "Primary",
                variant: ZiButtonVariantB.primary,
                action: () {},
              ),

              ZiButtonB(
                label: "Secondary",
                variant: ZiButtonVariantB.secondary,
                action: () {},
              ),

              ZiButtonB(
                label: "Outline",
                variant: ZiButtonVariantB.outline,
                action: () {},
              ),

              ZiButtonB(
                label: "Danger",
                variant: ZiButtonVariantB.destructive,
                action: () {},
              ),

              ZiButtonB(
                label: "Text",
                variant: ZiButtonVariantB.text,
                action: () {},
              ),

              ZiButtonB(
                label: "Inline",
                variant: ZiButtonVariantB.inLine,
                action: () {},
              ),
              ZiButtonB(
                // label: "Inline",
                icon: Icon(Icons.call),
                variant: ZiButtonVariantB.inLine,
                action: () {},
              ),

              ZiButtonB(
                icon: Icon(Icons.add),
                variant: ZiButtonVariantB.icon,
                action: () {},
              ),

              ZiButtonB(
                icon: Icon(Icons.favorite),
                variant: ZiButtonVariantB.iconFillCircular,
                action: () {},
              ),

              ZiButtonB(
                label: "Chip",
                variant: ZiButtonVariantB.chip,
                action: () {},
              ),

              ZiOverOptionsActionButton(
                actions: [
                  ZiOverOptionsAction(
                    icon: Icons.remove_red_eye_rounded,
                    label: "View",
                    onTap: () {},
                  ),
                  ZiOverOptionsAction(
                    icon: Icons.edit,
                    label: "Edit",
                    onTap: () {},
                  ),
                  ZiOverOptionsAction(
                    icon: Icons.delete,
                    label: "Delete",
                    onTap: () {},
                    isDanger: true,
                  ),
                  ZiOverOptionsAction(
                    icon: Icons.more_horiz_rounded,
                    label: "More",
                    onTap: () {},
                    isDisabled: true,
                  ),
                ],
              ),
              ZiOverOptionsActionButton(
                isHorizontal: true,
                actions: [
                  ZiOverOptionsAction(
                    icon: Icons.person,
                    label: "View Profile",
                    colorTone: ZiColors.info,
                    onTap: () {},
                  ),
                  ZiOverOptionsAction(
                    icon: Icons.message,
                    label: "Message",
                    onTap: () {},
                    colorTone: ZiColors.gainG,
                  ),
                  ZiOverOptionsAction(
                    icon: Icons.call,
                    label: "Call",
                    colorTone: ZiColors.warning,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24),

          /// =========================
          /// STATES
          /// =========================
          const SectionDivider(label: "States", isComplete: true),

          Wrap(
            spacing: 10,
            children: [
              ZiButtonB(label: "Loading", loading: true, action: () {}),

              ZiButtonB(label: "Disabled", disabled: true, action: () {}),

              ZiButtonB(
                label: "With Icon",
                icon: Icon(Icons.send),
                action: () {},
              ),
            ],
          ),

          const SizedBox(height: 24),

          const SectionDivider(label: "Customization", isComplete: true),
          const Text(
            "backgroundColor, borderColor, borderRadius, elevation, expand, foregroundColor, "
            "gradientColors, gradientDirection, height, hoverColor, iconSize, padding, splashColor, textStyle, width",
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              /// =========================
              /// FIXED HEIGHT BUTTON
              /// =========================
              ZiButtonB(
                label: "Height 24",
                action: () {},
                style: ZiButtonStyleB(
                  height: 24,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              /// =========================
              /// BORDER + OUTLINE STYLE
              /// =========================
              ZiButtonB(
                label: "Border Style",
                variant: ZiButtonVariantB.outline,
                action: () {},
                style: ZiButtonStyleB(
                  borderColor: ZiColors.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              /// =========================
              /// BASIC CUSTOM COLOR
              /// =========================
              ZiButtonB(
                label: "Custom Color",
                action: () {},
                style: ZiButtonStyleB(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),

              /// =========================
              /// CUSTOM PADDING BUTTON
              /// =========================
              ZiButtonB(
                label: "Padding",
                action: () {},
                style: ZiButtonStyleB(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 14,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              /// =========================
              /// ICON SIZE CONTROL
              /// =========================
              ZiButtonB(
                icon: Icon(Icons.star),
                label: "Icon Size",
                action: () {},
                style: ZiButtonStyleB(iconSize: 28),
              ),

              /// =========================
              /// TEXT STYLE OVERRIDE
              /// =========================
              ZiButtonB(
                label: "Text Style",
                action: () {},
                style: ZiButtonStyleB(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),

              /// =========================
              /// COMBINED PREMIUM STYLE
              /// =========================
              ZiButtonB(
                label: "Premium",
                action: () {},
                style: ZiButtonStyleB(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  elevation: 4,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              ),

              const SectionDivider(
                label: "Gradient Variants",
                isComplete: true,
              ),
            ],
          ),
          const SizedBox(height: 12),
          ZiButtonB(label: "Full Width", action: () {}, expand: true),
          const SizedBox(height: 12),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              /// -------------------------
              /// BLUE → PURPLE (PRIMARY)
              /// -------------------------
              ZiButtonB(
                label: "Primary Gradient",
                variant: ZiButtonVariantB.gradientFill,
                action: () {},
                style: ZiButtonStyleB(
                  gradientColors: const [Color(0xFF4F46E5), Color(0xFF9333EA)],
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ),

              /// -------------------------
              /// ORANGE → RED (WARNING / DANGER)
              /// -------------------------
              ZiButtonB(
                label: "Danger Gradient",
                variant: ZiButtonVariantB.gradientFill,
                expand: false,
                action: () {},
                style: ZiButtonStyleB(
                  expand: false,
                  gradientColors: const [Color(0xFFF97316), Color(0xFFEF4444)],
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ),

              /// -------------------------
              /// PURPLE → PINK (MODERN UI)
              /// -------------------------
              ZiButtonB(
                label: "Pink Gradient",
                variant: ZiButtonVariantB.gradientFill,
                action: () {},
                style: ZiButtonStyleB(
                  gradientColors: const [Color(0xFFA855F7), Color(0xFFEC4899)],
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ),

              /// -------------------------
              /// DARK MODE GRADIENT
              /// -------------------------
              ZiButtonB(
                label: "Dark Gradient",
                variant: ZiButtonVariantB.gradientFill,
                action: () {},
                style: ZiButtonStyleB(
                  gradientColors: const [Color(0xFF111827), Color(0xFF374151)],
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

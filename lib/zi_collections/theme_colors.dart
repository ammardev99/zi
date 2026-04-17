import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class ThemeColorsPage extends StatelessWidget {
  const ThemeColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      // appBar: AppBar(title: const Text("Theme Colors")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// =========================
            /// BRAND COLORS
            /// =========================
            const SectionDivider(label: "Brand Colors", isComplete: true),
            colorRow([
              colorItem("accent", ZiColors.accent),
              colorItem("primarySoft", ZiColors.primarySoft),
              colorItem("primary", ZiColors.primary),
              colorItem("primaryDark", ZiColors.primaryDark),
              colorItem("secondary", ZiColors.secondary),
              colorItem("tertiary", ZiColors.tertiary),
            ]),

            ziGap(16),

            /// =========================
            /// NEUTRALS
            /// =========================
            const SectionDivider(label: "Neutrals", isComplete: true),
            colorRow([
              colorItem("white", ZiColors.white),
              colorItem("background", ZiColors.background),
              colorItem("surface", ZiColors.surface),
              colorItem("border", ZiColors.border),
              colorItem("divider", ZiColors.divider),
              colorItem("black", ZiColors.black),
            ]),

            ziGap(16),

            /// =========================
            /// TEXT
            /// =========================
            const SectionDivider(label: "Text Colors", isComplete: true),
            colorRow([
              colorItem("textWhite", ZiColors.textWhite),
              colorItem("skeleton", ZiColors.skeleton),
              colorItem("textMuted", ZiColors.textMuted),
              colorItem("textSecondary", ZiColors.textSecondary),
              colorItem("textDark", ZiColors.textDark),
              colorItem("heading", ZiColors.heading),
            ]),

            ziGap(16),

            /// =========================
            /// STATES
            /// =========================
            const SectionDivider(label: "State Colors", isComplete: true),
            colorRow([
              colorItem("focus", ZiColors.focus),
              colorItem("success", ZiColors.success),
              colorItem("warning", ZiColors.warning),
              colorItem("error", ZiColors.error),
              colorItem("info", ZiColors.info),
              colorItem("disabled", ZiColors.disabled),
            ]),

            ziGap(16),

            /// =========================
            /// INPUTS
            /// =========================
            const SectionDivider(label: "Input Colors", isComplete: true),
            colorRow([
              colorItem("inputBg", ZiColors.inputBackground),
              colorItem("inputFilledBg", ZiColors.inputFilledBackground),
              colorItem("inputBorder", ZiColors.inputBorder),
              colorItem("inputHint", ZiColors.inputHint),
              colorItem("inputError", ZiColors.inputError),
              colorItem("inputFocused", ZiColors.inputFocused),
            ]),

            ziGap(16),

            /// =========================
            /// ON COLORS (Contrast)
            /// =========================
            const SectionDivider(label: "On Colors", isComplete: true),
            colorRow([
              colorItem("onPrimary", ZiColors.onPrimary),
              colorItem("onSecondary", ZiColors.onSecondary),
              colorItem("overlayLight", ZiColors.overlayLight),
              colorItem("overlayStrong", ZiColors.overlayStrong),
              colorItem("onSurface", ZiColors.onSurface),
              colorItem("onAccent", ZiColors.onAccent),
            ]),
          ],
        ),
      ),
    );
  }
}

Widget colorRow(List<Widget> children) {
  return Wrap(
    alignment: WrapAlignment.start,
    spacing: 12,
    runSpacing: 12,
    children: children,
  );
}

Widget colorItem(String name, Color color) {
  // final hex = '#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}';

  return Container(
    width: 110,
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      border: Border.all(color: ZiColors.border),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Color Box
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6),
          ),
        ),

        ziGap(6),

        /// Name
        SelectableText(name, style: ZiTypoStyles.caption),

        // /// HEX
        // Text(
        //   hex,
        //   style: ZiTypoStyles.caption.copyWith(
        //     color: ZiColors.textMuted,
        //     fontSize: 10,
        //   ),
        // ),
      ],
    ),
  );
}

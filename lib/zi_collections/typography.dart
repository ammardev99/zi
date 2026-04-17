import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      // appBar: AppBar(title: const Text("Typography System")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// =========================
            /// TITLES
            /// =========================
            const SectionDivider(label: "Titles", isComplete: true),
            typoRow([
              typoItem("titleXsm", ZiTypoStyles.titleXsm),
              typoItem("titleSm", ZiTypoStyles.titleSm),
              typoItem("titleMd", ZiTypoStyles.titleMd),
              typoItem("titleLg", ZiTypoStyles.titleLg),
              typoItem("titleXl", ZiTypoStyles.titleXl),
            ]),

            ziGap(16),

            /// =========================
            /// BODY
            /// =========================
            const SectionDivider(label: "Body", isComplete: true),
            typoRow([
              typoItem("bodySm", ZiTypoStyles.bodySm), 
              typoItem("bodyMd", ZiTypoStyles.bodyMd), 
            ]),

            ziGap(16),

            /// =========================
            /// BUTTONS
            /// =========================
            const SectionDivider(label: "Buttons", isComplete: true),
            typoRow([
              typoItem("buttonSm", ZiTypoStyles.buttonSm.copyWith(color: ZiColors.textDark)),
              typoItem("buttonMd", ZiTypoStyles.buttonMd.copyWith(color: ZiColors.textDark)),
              typoItem("buttonLg", ZiTypoStyles.buttonLg.copyWith(color: ZiColors.textDark)),
            ]),

            ziGap(16),

            /// =========================
            /// INPUTS
            /// =========================
            const SectionDivider(label: "Inputs", isComplete: true),
            typoRow([
              typoItem("inputLabel", ZiTypoStyles.inputLabel),
              typoItem("input", ZiTypoStyles.input),
              typoItem("inputHint", ZiTypoStyles.inputHint),
              typoItem("inputFocus", ZiTypoStyles.inputFocus),
              typoItem("inputError", ZiTypoStyles.inputError),
            ]),

            ziGap(16),

            /// =========================
            /// NUMERIC (TABULAR)
            /// =========================
            const SectionDivider(label: "Numeric", isComplete: true),
            typoRow([
              typoItem("noXsm", ZiTypoStyles.noXsm, "0000"), // 0000
              typoItem("noSm", ZiTypoStyles.noSm, "4422"), // 4422
              typoItem("noMd", ZiTypoStyles.noMd,"3366"), // 3366
              typoItem("noLg", ZiTypoStyles.noLg,"8877"), //8877
              typoItem("noXl", ZiTypoStyles.noXl,"9900"), //8877
            ]),

            ziGap(16),

            /// =========================
            /// META / CAPTION
            /// =========================
            const SectionDivider(label: "Meta / Caption", isComplete: true),
            typoRow([
              typoItem("caption", ZiTypoStyles.caption),
              typoItem("tag", ZiTypoStyles.tag),
              typoItem("link", ZiTypoStyles.link),
              typoItem("overMini", ZiTypoStyles.overMini),
              typoItem("disabled", ZiTypoStyles.disabled),
            ]),

            ziGap(24),
          ],
        ),
      ),
    );
  }
}

Widget typoRow(List<Widget> children) {
  return Wrap(spacing: 12, runSpacing: 12, children: children);
}

Widget typoItem(String name, TextStyle style, [String? textV = "Aa Bb"]) {
  return Container(
    width: 140,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: ZiColors.border),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Preview
        Text(textV!, style: style),

        ziGap(6),

        /// Name
        SelectableText(name, style: ZiTypoStyles.caption),

        // /// Meta Info
        // Text(
        //   "S:${style.fontSize} W:${style.fontWeight!.value}",
        //   style: ZiTypoStyles.caption.copyWith(fontSize: 10),
        // ),
      ],
    ),
  );
}

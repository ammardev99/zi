// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:zi_core/zi_core_io.dart';

// bool isDesktop = MediaQuery.of(context).size.width > 800;

class WebTabItem {
  final String label;
  final Widget page;
  final bool isInDev;

  WebTabItem({required this.label, required this.page, required this.isInDev});
}

//

class SideTab extends StatelessWidget {
  final String label;
  // final Widget page;
  final bool isActive;
  final bool isInDev;
  // onTap
  final VoidCallback onTap;

  const SideTab({
    super.key,
    required this.label,
    // required this.page,
    required this.isActive,
    required this.isInDev,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: ZiColors.accent,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
          color: isActive ? ZiColors.primary : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: ZiTypoStyles.bodyMd.copyWith(
                color: isActive ? Colors.white : ZiColors.textMuted,
              ),
            ),
            if (isInDev) Icon(Icons.code, size: 18,),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SideInfoCard extends StatelessWidget {
  String title;
  String description;
  // ontap
  bool isButton;
  String? btnLable;
  VoidCallback? onTap;

  SideInfoCard({
    super.key,
    required this.title,
    required this.description,
    this.isButton = false,
    this.btnLable,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: ZiTypoStyles.titleSm),
        Text(description, style: ZiTypoStyles.bodySm),
        if (isButton)
          ZiButtonB(
            label: btnLable ?? "Action",
            variant: ZiButtonVariantB.inLine,
            action: () {
              // Action for the button
              onTap?.call();
            },
          ),
      ],
    );
  }
}

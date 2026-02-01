import 'package:flutter/material.dart';
import 'package:zi_core/zi_core.dart';

class ViewButtons extends StatelessWidget {
  const ViewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBarB(title: "ZiButtons Preview"),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.primary,
                onTap: () {},
                label: "Primary",
                style: ZiButtonStyleB(height: ZiSizes.btnHeightApp),
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.primary,
                onTap: () {},
                label: "Primary",
                style: ZiButtonStyleB(height: ZiSizes.btnHeightWeb),
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.primary,
                onTap: () {},
                label: "Primary",
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.primary,
                onTap: () {},
                label: "Primary",
                expand: true,
                style: ZiButtonStyleB(),
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                onTap: () {},
                label: "Secondary",
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.outline,
                onTap: () {},
                label: "Outline",
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.destructive,
                onTap: () {},
                label: "Delete",
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.text,
                onTap: () {},
                label: "Text",
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.icon,
                onTap: () {},
                icon: Icon(Icons.favorite),
                style: ZiButtonStyleB(iconSize: 2, elevation: 2),
              ),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.iconFillCircular,
                onTap: () {},
                icon: Icon(Icons.send),
                style: ZiButtonStyleB(
                  iconSize: 5,
                  elevation: 5,
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

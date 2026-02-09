import 'package:flutter/material.dart';
import 'package:zi_core/zi_core.dart';

class ViewMediaImagesPage extends StatelessWidget {
  const ViewMediaImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBarB(title: "Test Page"),

      body: Column(
        children: [
          SectionDivider(label: "label"),
          // TODO: add images use cases
          ZiImage(path: "path", type: ZiImageType.asset),
          ZiImage(
            path: "path",
            type: ZiImageType.asset,
            variant: ZiImageVariant.circle,
            style: ZiImageStyle(border: Border.all(color: Colors.black12)),
          ),
          ZiImage(path: "", type: ZiImageType.asset, ratio: ZiImageRatio.r3x4),

          Row(children: [
            Text("data "), 
            ZiButtonB(
              // label: "on",
              icon: Icon(Icons.call),
              variant: ZiButtonVariantB.inLine,
              style: ZiButtonStyleB(foregroundColor: ZiColors.primary,  textStyle: ZiTypoStyles.button.copyWith(
                color: Colors.amber
              )),
              action: () {
                
              },
            )
          ],)
        ],
      ),
    );
  }
}

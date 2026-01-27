import 'package:zi/zi_core/zi_core_io.dart';
import 'package:flutter/material.dart';


class ViewButtons extends StatelessWidget {
  const ViewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZiAppBar(title: "Buttons"),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SectionDivider(label: "Enm Buttons"),
            Row(
              children: [
                ZiFillButton(
                  label: "Save",
                  onAction: ZiTapAction(type: ZiTapActionType.dialog),
                ),
                SizedBox(width: 10),
                ZiFillButton(
                  label: "Save",
                  loading: true,
                  onAction: ZiTapAction(type: ZiTapActionType.dialog),
                  style: ZiBtnStyle.fill(expand: true),
                ),
                SizedBox(width: 10),
                ZiFillButton(
                  label: "Save",
                  onAction: ZiTapAction(type: ZiTapActionType.dialog),
                ),
              ],
            ),
            SectionDivider(label: "Loadings "),
            Row(
              children: [
                ZiLoading(),
                SizedBox(width: 20),
                ZiLoading(type: ZiLoadingType.linear),
                SizedBox(width: 20),
                ZiLoading(type: ZiLoadingType.circularPercent, ziLoadstyle: ZiLoadingStyle(
                  value: 0.85,
                  showPercentage: true,
                ),),
                SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

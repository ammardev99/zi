import 'package:flutter/material.dart';
import 'package:zi/zi_core/widgets/molecules/buttons/old/zi_fill_button.dart';

import '../../zi_core/zi_core_io.dart';

class ViewLoadings extends StatelessWidget {
  const ViewLoadings({super.key});

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBarB(title: "Zi Loadings"),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ZiSectionTag(title: "circular"),
          ZiLoading(type: ZiLoadingType.circular),
          // ZiLoading(type: ZiLoadingType.circular, style: ZiLoadingStyle(color: Colors.red, size: 40, strokeWidth: 6),),
          ZiSectionTag(title: "circular Theme"),
          ZiLoading(type: ZiLoadingType.circularTheme),
          // ZiLoading(type: ZiLoadingType.circular, style: ZiLoadingStyle(color: Colors.red, size: 40, strokeWidth: 6),),
          ZiSectionTag(title: "linear"),
          ZiLoading(type: ZiLoadingType.linear),
          ZiSectionTag(title: "linear Theme"),
          ZiLoading(type: ZiLoadingType.linearTheme),
          SizedBox(height: 10),
          //---------------------Loaging Types---------------------//
          ZiSectionTag(title: "circularPercent"),
          Row(
            children: [
              ZiLoading(
                type: ZiLoadingType.circularPercent,
                ziLoadstyle: ZiLoadingStyle(value: 0.2),
              ),
              SizedBox(width: 20),
              ZiLoading(
                type: ZiLoadingType.circularPercentText,
                ziLoadstyle: ZiLoadingStyle(value: 0.6),
              ),
            ],
          ),
          ZiSectionTag(title: "dots"),
          ZiLoading(
            type: ZiLoadingType.dots,
            ziLoadstyle: ZiLoadingStyle(value: 5),
          ),
          SizedBox(height: 10),
          ZiLoading(type: ZiLoadingType.dotsTheme),
          ZiSectionTag(title: "skeleton List"),
          // list loading
          Container(
            margin: EdgeInsets.all(15),
            child: ZiLoading(
              type: ZiLoadingType.skeleton,
              ziLoadstyle: ZiLoadingStyle(size: 80),
            ),
          ),
          ZiSectionTag(title: "skeleton"),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ZiLoading(
              type: ZiLoadingType.skeleton,
              ziLoadstyle: ZiLoadingStyle(value: 4, size: 40),
            ),
          ),

          ZiSectionTag(title: "skeleton cards"),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ZiLoading(
              type: ZiLoadingType.skeletonGrid,
              ziLoadstyle: ZiLoadingStyle(
                columns: 2,
                count: 6,
                size: 2, // ratio
              ),
            ),
          ),

          ZiFillButton(
            label: 'Login',
            onAction: ZiTapAction(
              type: ZiTapActionType.custom,
              onTap: () {
                ZiOverlayLoader.show(context, type: ZiOverlayType.loading);
                Future.delayed(const Duration(seconds: 2), () {
                  // ignore: use_build_context_synchronously
                  ZiOverlayLoader.hide(context);
                });
              },
            ),
          ),

          ZiFillButton(
            label: "acll",
            onAction: ZiTapAction(
              type: ZiTapActionType.custom,
              onTap: () {
                ZiOverlayLoader.show(
                  context,
                  visual: ZiOverlayVisual.circularWithText,
                  message: 'Signing in...',
                );
                Future.delayed(const Duration(seconds: 3), () {
                  // show status
                  // ignore: use_build_context_synchronously
                  ZiOverlayLoader.hide(context);
                });
              },
            ),
          ),
          // ZiPrimaryButton(
          // )
        ],
      ),
    );
  }
}

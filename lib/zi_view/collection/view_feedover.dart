import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:zi_core/zi_core.dart';

// ignore: must_be_immutable
class ViewFeedOver extends StatelessWidget {
  ViewFeedOver({super.key});
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ZiScaffold(
      appBar: ZiAppBarB(title: "FeedOver"),
      body: Column(
        children: [
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "error",
                onTap: () {
                  // Bottom Sheet
                  ZiBottomSheet.show(
                    context,
                    child: ZiActionSheet(
                      actions: [
                        ListTile(title: Text("Edit")),
                        ListTile(title: Text("Delete")),
                      ],
                    ),
                  );
                },
              ),

              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "error",
                onTap: () async {
                  // Confirm
                  await ZiConfirmDialog.show(
                    context,
                    title: "Delete",
                    message: "Are you sure?",
                  );
                },
              ),

              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "error",
                onTap: () {
                  // Alert
                  ZiAlertDialog.show(
                    context,
                    title: "Error",
                    message: "Something went wrong",
                  );
                },
              ),

              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "error",
                onTap: () {
                  ZiFeedback.snackbar(
                    context,
                    message: "Will not back",
                    type: ZiSnackbarType.warning,
                  );
                },
              ),

              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "error",
                onTap: () {
                  ZiFeedback.snackbar(
                    context,
                    message: "File Added",
                    type: ZiSnackbarType.success,
                    actionLabel: "Undo",
                    onAction: () {},
                  );
                },
              ),

              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "error",
                onTap: () {
                  ZiFeedback.snackbar(
                    context,
                    message: "Edit Profile",
                    type: ZiSnackbarType.info,
                    actionLabel: "Undo",
                    onAction: () {},
                  );
                },
              ),

              SizedBox(width: 4),

              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "error",
                onTap: () {
                  ZiFeedback.snackbar(
                    context,
                    message: "No internet connection",
                    type: ZiSnackbarType.error,
                    actionLabel: "Retry",
                    onAction: () {},
                  );
                },
              ),
              Divider(),
              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "warning",
                onTap: () {
                  ZiFeedback.toast(
                    context,
                    message: "Toast Message here",
                    type: ZiToastType.warning,
                  );
                },
              ),

              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "success",
                onTap: () {
                  ZiFeedback.toast(
                    context,
                    message: "Toast Message here",
                    type: ZiToastType.success,
                  );
                },
              ),

              SizedBox(width: 4),
              ZiGetButtonB.get(
                variant: ZiButtonVariantB.secondary,
                label: "info",
                onTap: () {
                  ZiFeedback.toast(
                    context,
                    message: "Toast Message here",
                    type: ZiToastType.info,
                  );
                },
              ),

              SizedBox(width: 4),

              SizedBox(width: 4),

              SizedBox(width: 4),

              SizedBox(width: 4),
            ],
          ),

          SizedBox(height: 10),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: ZiBottomBar(
        items: [
          TabItem(icon: Icons.add),
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.menu),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
        },
        type: ZiBottomBarType.creative,
        style: ZiBottomBarStyle(
          backgroundColor: Colors.pink,
          color: Colors.deepOrange,
          colorSelected: Colors.purple,
        ),
      ),
    );
  }
}

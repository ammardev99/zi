import 'package:flutter/material.dart';
import 'package:zi/zi_core/widgets/atoms/indicators/zi_progress_indicator.dart';
import 'package:zi/zi_core/widgets/atoms/indicators/zi_status_dot.dart';
import 'package:zi/zi_core/widgets/molecules/forms/selections/zi_checkbox.dart';
import 'package:zi/zi_core/widgets/molecules/forms/selections/zi_radio.dart';
import 'package:zi/zi_core/widgets/molecules/forms/selections/zi_switch.dart';
import 'package:zi/zi_core/zi_core_io.dart';

class ViewSelections extends StatefulWidget {
  const ViewSelections({super.key});

  @override
  State<ViewSelections> createState() => _ViewSelectionsState();
}

class _ViewSelectionsState extends State<ViewSelections> {
  @override
  Widget build(BuildContext context) {
    bool agree = false;
    String gender = "M";
    bool darkMode = false;
    return ZiScaffold(
      appBar: ZiAppBar(title: "Selections"),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 10),
            // Checkbox
            ZiCheckboxTile(
              value: agree,
              label: "Accept terms",
              onChanged: (v) => setState(() => agree = v),
            ),
            SizedBox(height: 10),
            // Radio
            ZiRadioTile(
              value: "male",
              groupValue: gender,
              label: "Male",
              onChanged: (v) => setState(() => gender = v),
            ),
            SizedBox(height: 10),
            // Radio
            ZiRadioTile(
              value: "Fmale",
              groupValue: gender,
              label: "FMale",
              onChanged: (v) => setState(() => gender = v),
            ),

            SizedBox(height: 10),
            // Switch
            ZiSwitchTile(
              value: darkMode,
              label: "Dark Mode",
              onChanged: (v) => setState(() => darkMode = v),
            ),

            // // Dropdown
            // ZiDropdown<String>(
            //   value: country,
            //   items: [
            //     ZiDropdownItem(value: "pk", label: "Pakistan"),
            //     ZiDropdownItem(value: "us", label: "USA"),
            //   ],
            //   onChanged: (v) => setState(() => country = v),
            // );
            SectionDivider(label: "label"),
            ZiBadge(count: 5, child: Icon(Icons.notification_important)),
            // Badge
            // ZiBadge(label: "NEW");

            // Status dot
            ZiStatusDot(color: Colors.green),

            // Progress
            ZiProgressIndicator(value: 0.6),

            // Empty
            // ZiEmptyState(
            //   // icon: Icons.inbox_outlined,
            //   // title: "No Messages",
            //   // subtitle: "You don’t have any messages yet",
            // ),

            // Error
            // ZiErrorState(
            //   title: "Something went wrong",
            //   message: "Please check your internet connection",
            //   onRetry: fetchData,
            // );

            // Loading
            // ZiLoadingState(message: "Loading data...");
            SectionDivider(label: "label"),
          ],
        ),
      ),
    );
  }
}

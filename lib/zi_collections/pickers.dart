import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class ZiPickersView extends StatefulWidget {
  const ZiPickersView({super.key});

  @override
  State<ZiPickersView> createState() => _ZiPickersViewState();
}

class _ZiPickersViewState extends State<ZiPickersView> {
  DateTime? date;
  TimeOfDay? time;
  DateTimeRange? range;
  String? country;
  String? color;

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      body: ListView(
        children: [
          ZiMenuTile1(
            label: "label",
            action: ZiTapAction(type: ZiTapActionType.copy),
          ),
          const SectionDivider(label: "CORE PICKERS", isComplete: true),
          Icon(ZiIcons.home),
          ZiInput(
            label: "Select Date: ${date?.toString()}",
            // readOnly: true,
            // value: date?.toString(),
            type: ZiInputType.date,
            suffix: IconButton(
              icon: const Icon(Icons.calendar_month),
              onPressed: () async {},
            ),
          ),
          Divider(),
          Divider(),
          // CORE
          // date
          // time
          // range
          // ADVANCED
          // country
          // color
          // SYSTEM
          // file/image/video
          // FUTURE (placeholders)
          // scheduler
          // recurring
          // calendar full

          // calendar grid
          // range select
          // today highlight
          // disabled dates
          // smooth animation
          // theme tokens
          // returns typed result
          // =========================
          // CORE PICKERS
          // =========================
          const SectionDivider(label: "CORE PICKERS", isComplete: true),

          /// DATE
          ZiInput(
            label: "Select Date: ${date?.toString()}",
            // readOnly: true,
            // value: date?.toString(),
            type: ZiInputType.date,
            suffix: IconButton(
              icon: const Icon(Icons.calendar_month),
              onPressed: () async {
                final result = await ZiPickers.date(context);
                if (result != null) {
                  setState(() => date = result);
                }
              },
            ),
          ),

          ziGap(12),

          /// TIME
          ZiInput(
            label: "Select Time ${time?.format(context)}",
            // readOnly: true,
            // value: time?.format(context),
            suffix: IconButton(
              icon: const Icon(Icons.access_time),
              onPressed: () async {
                final result = await ZiPickers.time(context);
                if (result != null) {
                  setState(() => time = result);
                }
              },
            ),
          ),

          ziGap(12),

          /// RANGE
          ZiInput(
            label:
                "Select Date Range${range == null ? null : "${range!.start} → ${range!.end}"}",
            // readOnly: true,
            // value: range == null ? null : "${range!.start} → ${range!.end}",
            suffix: IconButton(
              icon: const Icon(Icons.date_range),
              onPressed: () async {
                final result = await ZiPickers.range(context);
                if (result != null) {
                  setState(() => range = result as DateTimeRange?);
                }
              },
            ),
          ),

          ziGap(20),

          // =========================
          // ADVANCED PICKERS (LAYER 2)
          // =========================
          const SectionDivider(label: "ADVANCED PICKERS", isComplete: true),

          /// COUNTRY
          // ZiInput(
          //   label: "Country Picker $country",
          //   // readOnly: true,
          //   // value: country,
          //   suffix: IconButton(
          //     icon: const Icon(Icons.public),
          //     onPressed: () async {
          //       final result = await ZiPickers.country(context);
          //       setState(() => country = result);
          //     },
          //   ),
          // ),
          ziGap(12),

          /// COLOR
          ZiInput(
            label: "Color Picker $color",
            // readOnly: true,
            // value: color,
            suffix: IconButton(
              icon: const Icon(Icons.color_lens),
              onPressed: () async {
                final result = await ZiPickers.color(context);
                setState(() => color = result?.toString());
              },
            ),
          ),

          ziGap(20),

          // =========================
          // FILE SYSTEM (LAYER 3)
          // =========================
          const SectionDivider(label: "FILE SYSTEM", isComplete: true),

          // ZiInput(
          //   label: "File Picker",
          //   suffix: IconButton(
          //     icon: const Icon(Icons.attach_file),
          //     onPressed: () async {
          //       await ZiPickers.file(context);
          //     },
          //   ),
          // ),

          // ziGap(12),

          // ZiInput(
          //   label: "Image Picker",
          //   suffix: IconButton(
          //     icon: const Icon(Icons.image),
          //     onPressed: () async {
          //       await ZiPickers.image(context);
          //     },
          //   ),
          // ),

          // ziGap(12),

          // ZiInput(
          //   label: "Video Picker",
          //   suffix: IconButton(
          //     icon: const Icon(Icons.videocam),
          //     onPressed: () async {
          //       await ZiPickers.video(context);
          //     },
          //   ),
          // ),
          ziGap(20),

          // =========================
          // FUTURE SYSTEM (PLACEHOLDER LAYER)
          // =========================
          const SectionDivider(label: "FUTURE SYSTEMS", isComplete: false),

          ZiInput(
            label: "Calendar (Full Screen)",
            suffix: IconButton(
              icon: const Icon(Icons.calendar_view_month),
              onPressed: () {},
            ),
          ),

          ziGap(12),

          ZiInput(
            label: "Scheduler Picker",
            suffix: IconButton(
              icon: const Icon(Icons.schedule),
              onPressed: () {},
            ),
          ),

          ziGap(12),

          ZiInput(
            label: "Recurring Picker",
            suffix: IconButton(
              icon: const Icon(Icons.repeat),
              onPressed: () {},
            ),
          ),

          ziGap(30),
        ],
      ),
    );
  }
}

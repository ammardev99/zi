import 'package:flutter/material.dart';
import 'package:zi_core/zi_core_io.dart';

class ViewSelections extends StatefulWidget {
  const ViewSelections({super.key});

  @override
  State<ViewSelections> createState() => _ViewSelectionsState();
}

class _ViewSelectionsState extends State<ViewSelections> {
  bool agree = false;
  String gender = "M";
  bool darkMode = false;
  //
  bool isOn1 = false;
  bool isOn2 = true;
  bool isOn3 = false;
  bool isOn4 = false;
  bool isOn5 = true;
  bool isOn6 = false;
  bool isOn7 = false;
  bool isOn8 = true;
  bool isOn9 = false;
  bool isOn10 = true;
  bool isOn11 = false;

  bool isLoading1 = false;
  bool isLoading2 = false;
  bool isLoading3 = false; //

  bool v1 = false;
  bool v2 = true;
  bool v3 = false;

  bool l1 = true;
  bool l2 = true;
  bool l3 = true;

  bool c1 = true;
  bool c2 = false;
  bool c3 = true;

  String group1 = "a";
  String group2 = "a";
  String group3 = "a";

  bool f1 = false;
  bool f2 = true;
  bool f3 = false;

  bool s1 = false;
  bool s2 = true;
  bool s3 = false;

  String choice = "A";

  List<String> tags = ["Flutter", "Dart"];

  @override
  Widget build(BuildContext context) {
    var value = 'Week';
    List<String> selectedList = ['pk'];
    String country = 'pk';
    return ZiScaffoldB(
      // appBar: ZiAppBarB(title: "Selections"),
      body: ListView(
        children: [
          Column(
            children: [
              /// =======================
              /// R1 → DEFAULT
              /// =======================
              ///
              // const SectionDivider(label: "Field Wrapper", isComplete: true),
              // ZiFieldWrapper(
              //   label: "Accept Terms",
              //   requiredField: true,
              //   errorText: isError ? "Required" : null,
              //   child: ZiCheckBoxD(
              //     value: c1,
              //     onChanged: (val) => setState(() => c1 = val),
              //     label: "I agree",
              //   ),
              // ),
              // ZiFieldWrapper(
              //   label: "Gender",
              //   child: Row(
              //     children: [
              //       ZiRadioD(value: "M", groupValue: g, onChanged: onChange),
              //       ZiRadioD(value: "F", groupValue: g, onChanged: onChange),
              //     ],
              //   ),
              // ),

              // ZiFieldWrapper(
              //   label: "View Mode",
              //   child: ZiSegmentedControl(
              //     items: ["Grid", "List"],
              //     selected: mode,
              //     onChanged: (v) => setState(() => mode = v),
              //   ),
              // ),
              Divider(),
              const SectionDivider(label: "default", isComplete: true),

              Row(
                children: [
                  ZiSwitchD(
                    value: s1,
                    onChanged: (v) => setState(() => s1 = v),
                    type: ZiSwitchDType.solid,
                  ),
                  const SizedBox(width: 16),

                  ZiSwitchD(
                    value: s2,
                    onChanged: (v) => setState(() => s2 = v),
                    type: ZiSwitchDType.outline,
                  ),
                  const SizedBox(width: 16),

                  ZiSwitchD(
                    value: s3,
                    onChanged: (v) => setState(() => s3 = v),
                    type: ZiSwitchDType.soft,
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// =======================
              /// R2 → LOADING
              /// =======================
              const SectionDivider(label: "loading", isComplete: true),

              Row(
                children: [
                  ZiSwitchD(value: true, onChanged: (_) {}, isLoading: true),
                  const SizedBox(width: 16),

                  ZiSwitchD(value: false, onChanged: (_) {}, disabled: true),
                ],
              ),

              const SizedBox(height: 24),

              /// =======================
              /// R3 → CUSTOMIZATION
              /// =======================
              const SectionDivider(label: "Customization", isComplete: true),

              Row(
                children: [
                  ZiSwitchD(
                    value: true,
                    onChanged: (v) {},
                    type: ZiSwitchDType.solid,
                    style: ZiSwitchDStyle.fallback(),
                  ),
                  const SizedBox(width: 16),

                  ZiSwitchD(
                    value: true,
                    onChanged: (v) {},
                    type: ZiSwitchDType.soft,
                    style: ZiSwitchDStyle.fallback(),
                  ),
                ],
              ),

              Divider(),
              Divider(),
              Divider(),
              ZiSegmentedControl<String>(
                items: ["Day", "Week", "Month"],
                selected: value,
                onChanged: (v) => setState(() => value = v),
              ),
              Divider(),
              Divider(),
              Divider(),

              /// =======================
              /// R1 → DEFAULT
              /// =======================
              const SectionDivider(label: "default", isComplete: true),
              const SizedBox(height: 12),

              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  /// FILTER (multi)
                  ZiChipD(
                    label: "Filter A",
                    selected: f1,
                    type: ZiChipDType.filter,
                    variant: ZiChipDVariant.filled,
                    onTap: () => setState(() => f1 = !f1),
                  ),

                  ZiChipD(
                    label: "Filter B",
                    selected: f2,
                    type: ZiChipDType.filter,
                    variant: ZiChipDVariant.outline,
                    onTap: () => setState(() => f2 = !f2),
                  ),

                  /// CHOICE (single)
                  ZiChipD(
                    label: "Choice A",
                    selected: choice == "A",
                    type: ZiChipDType.choice,
                    variant: ZiChipDVariant.soft,
                    onTap: () => setState(() => choice = "A"),
                  ),

                  ZiChipD(
                    label: "Choice B",
                    selected: choice == "B",
                    type: ZiChipDType.choice,
                    variant: ZiChipDVariant.soft,
                    onTap: () => setState(() => choice = "B"),
                  ),

                  /// INPUT (tags)
                  ...tags.map(
                    (t) => ZiChipD(
                      label: t,
                      selected: true,
                      type: ZiChipDType.input,
                      variant: ZiChipDVariant.filled,
                      onRemove: () => setState(() => tags.remove(t)),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// =======================
              /// R2 → LOADING (disabled simulation)
              /// =======================
              const SectionDivider(label: "loading", isComplete: true),
              const SizedBox(height: 12),

              Wrap(
                spacing: 8,
                children: [
                  ZiChipD(
                    label: "Loading",
                    selected: true,
                    type: ZiChipDType.filter,
                    variant: ZiChipDVariant.filled,
                    onTap: null, // disabled
                  ),
                  ZiChipD(
                    label: "Loading",
                    selected: false,
                    type: ZiChipDType.choice,
                    variant: ZiChipDVariant.outline,
                    onTap: null,
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// =======================
              /// R3 → CUSTOMIZATION
              /// =======================
              const SectionDivider(label: "Customization", isComplete: true),
              const SizedBox(height: 12),

              Wrap(
                spacing: 8,
                children: [
                  ZiChipD(
                    label: "Custom Blue",
                    selected: true,
                    type: ZiChipDType.filter,
                    variant: ZiChipDVariant.filled,
                    style: ZiChipDStyle.fallback(),
                  ),
                  ZiChipD(
                    label: "Custom Radius",
                    selected: true,
                    type: ZiChipDType.filter,
                    variant: ZiChipDVariant.soft,
                    style: ZiChipDStyle.fallback(),
                  ),
                ],
              ),

              Divider(),
              Divider(),
              Divider(),

              /// =======================
              /// R1 → DEFAULT
              /// =======================
              const SectionDivider(label: "default", isComplete: true),
              const SizedBox(height: 12),

              Row(
                children: [
                  ZiRadioD(
                    value: "a",
                    groupValue: group1,
                    onChanged: (v) => setState(() => group1 = v),
                    type: ZiRadioDType.dot,
                    label: "Dot",
                  ),
                  const SizedBox(width: 16),

                  ZiRadioD(
                    value: "b",
                    groupValue: group1,
                    onChanged: (v) => setState(() => group1 = v),
                    type: ZiRadioDType.outline,
                    label: "Outline",
                  ),
                  const SizedBox(width: 16),

                  ZiRadioD(
                    value: "c",
                    groupValue: group1,
                    onChanged: (v) => setState(() => group1 = v),
                    type: ZiRadioDType.soft,
                    label: "Soft",
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// =======================
              /// R2 → LOADING (simulate locked)
              /// =======================
              const SectionDivider(label: "loading", isComplete: true),
              const SizedBox(height: 12),

              Row(
                children: [
                  ZiRadioD(
                    value: "a",
                    groupValue: group2,
                    onChanged: (_) {},
                    type: ZiRadioDType.dot,
                    label: "Dot",
                    disabled: true,
                  ),
                  const SizedBox(width: 16),

                  ZiRadioD(
                    value: "b",
                    groupValue: group2,
                    onChanged: (_) {},
                    type: ZiRadioDType.outline,
                    label: "Outline",
                    disabled: true,
                  ),
                  const SizedBox(width: 16),

                  ZiRadioD(
                    value: "c",
                    groupValue: group2,
                    onChanged: (_) {},
                    type: ZiRadioDType.soft,
                    label: "Soft",
                    disabled: true,
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// =======================
              /// R3 → CUSTOMIZATION
              /// =======================
              const SectionDivider(label: "Customization", isComplete: true),
              const SizedBox(height: 12),

              Row(
                children: [
                  ZiRadioD(
                    value: "a",
                    groupValue: group3,
                    onChanged: (v) => setState(() => group3 = v),
                    type: ZiRadioDType.dot,
                    label: "Custom Dot",
                    style: ZiRadioDStyle.fallback().copyWith(
                      activeColor: Colors.blue,
                      dotColor: Colors.white,
                      size: 24,
                      dotSize: 12,
                    ),
                  ),
                  const SizedBox(width: 16),

                  ZiRadioD(
                    value: "b",
                    groupValue: group3,
                    onChanged: (v) => setState(() => group3 = v),
                    type: ZiRadioDType.outline,
                    label: "Custom Outline",
                    style: ZiRadioDStyle.fallback().copyWith(
                      activeColor: Colors.orange,
                      borderColor: Colors.orange,
                      borderWidth: 2,
                    ),
                  ),
                  const SizedBox(width: 16),

                  ZiRadioD(
                    value: "c",
                    groupValue: group3,
                    onChanged: (v) => setState(() => group3 = v),
                    type: ZiRadioDType.soft,
                    label: "Custom Soft",
                    style: ZiRadioDStyle.fallback().copyWith(
                      activeColor: Colors.purple,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              Divider(),
              Divider(),
              // Switchs

              /// =======================
              /// R1 → DEFAULT
              /// =======================
              const SectionDivider(label: "default", isComplete: true),

              const SizedBox(height: 12),

              Row(
                children: [
                  ZiCheckBoxD(
                    value: v1,
                    onChanged: (v) => setState(() => v1 = v),
                    type: ZiCheckBoxDType.fill,
                    label: "Fill",
                  ),
                  const SizedBox(width: 16),

                  ZiCheckBoxD(
                    value: v2,
                    onChanged: (v) => setState(() => v2 = v),
                    type: ZiCheckBoxDType.outline,
                    label: "Outline",
                  ),
                  const SizedBox(width: 16),

                  ZiCheckBoxD(
                    value: v3,
                    onChanged: (v) => setState(() => v3 = v),
                    type: ZiCheckBoxDType.circular,
                    label: "Circular",
                  ),
                  const SizedBox(width: 16),

                  ZiCheckBoxD(
                    value: v1,
                    onChanged: (v) => setState(() => v1 = v),
                    type: ZiCheckBoxDType.hybrid,
                    label: "Hybrid",
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// =======================
              /// R2 → LOADING
              /// =======================
              const SectionDivider(label: "loading", isComplete: true),

              const SizedBox(height: 12),

              Row(
                children: [
                  ZiCheckBoxD(
                    value: l1,
                    onChanged: (_) {},
                    isLoading: true,
                    type: ZiCheckBoxDType.fill,
                    label: "Fill",
                  ),
                  const SizedBox(width: 16),

                  ZiCheckBoxD(
                    value: l2,
                    onChanged: (_) {},
                    isLoading: true,
                    type: ZiCheckBoxDType.outline,
                    label: "Outline",
                  ),
                  const SizedBox(width: 16),

                  ZiCheckBoxD(
                    value: l3,
                    onChanged: (_) {},
                    isLoading: true,
                    type: ZiCheckBoxDType.circular,
                    label: "Circular",
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// =======================
              /// R3 → CUSTOMIZATION
              /// =======================
              const SectionDivider(label: "Customization", isComplete: true),

              const SizedBox(height: 12),

              Row(
                children: [
                  ZiCheckBoxD(
                    value: c1,
                    onChanged: (v) => setState(() => c1 = v),
                    type: ZiCheckBoxDType.fill,
                    label: "Custom Fill",
                    style: ZiCheckBoxDStyle.fallback().copyWith(
                      activeColor: Colors.blue,
                      inactiveColor: Colors.blue.withValues(alpha: 0.2),
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  ZiCheckBoxD(
                    value: c2,
                    onChanged: (v) => setState(() => c2 = v),
                    type: ZiCheckBoxDType.outline,
                    label: "Custom Outline",
                    style: ZiCheckBoxDStyle.fallback().copyWith(
                      activeColor: Colors.orange,
                      borderColor: Colors.orange,
                      borderWidth: 2,
                    ),
                  ),
                  const SizedBox(width: 16),

                  ZiCheckBoxD(
                    value: c3,
                    onChanged: (v) => setState(() => c3 = v),
                    type: ZiCheckBoxDType.circular,
                    label: "Custom Circle",
                    style: ZiCheckBoxDStyle.fallback().copyWith(
                      activeColor: Colors.purple,
                      borderColor: Colors.purple,
                      size: 26,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              Divider(),
              Divider(),
              ZiCheckBoxD(
                value: isOn8,

                onChanged: (value) {
                  setState(() {
                    isOn8 = value;
                  });
                },
              ),
              Divider(),
              // Checkbox
              // ZiCheckBoxD(
              //   value: agree,
              //   isLoading: false,
              //   style: ZiCheckBoxDStyle.solid,
              //   activeColor: ZiColors.primary,
              //   onChanged: (v) {
              //     setState(() {
              //       agree = v;
              //     });
              //   },
              //   label: "fvdcx sd xdc cx",
              // ),
              // ZiCheckBoxD(
              //   value: agree,
              //   isLoading: false,
              //   style: ZiCheckBoxDStyle.base,
              //   activeColor: ZiColors.primary,
              //   onChanged: (v) {
              //     setState(() {
              //       agree = v;
              //     });
              //   },
              // ),
              Divider(),
              const Text(
                "SWITCH VARIANTS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const SectionDivider(label: "default", isComplete: true),

              Row(
                children: [
                  ZISwitchE(
                    value: isOn1,
                    onChanged: (v) => setState(() => isOn1 = v),
                  ),

                  const SizedBox(height: 12),

                  ZISwitchE(
                    value: isOn2,
                    size: ZiSwitchESize.small,
                    onChanged: (v) => setState(() => isOn2 = v),
                  ),

                  const SizedBox(height: 12),

                  ZISwitchE(
                    value: isOn3,
                    size: ZiSwitchESize.large,
                    onChanged: (v) => setState(() => isOn3 = v),
                  ),
                ],
              ),

              const SectionDivider(label: "Customization", isComplete: true),

              /// Solid + Icons
              Row(
                children: [
                  ZISwitchE(
                    value: isOn4,
                    style: ZiSwitchEStyle.solid,
                    activeIcon: Icons.check,
                    inactiveIcon: Icons.close,
                    onChanged: (v) => setState(() => isOn4 = v),
                  ),

                  const SizedBox(height: 12),

                  /// Outline + Custom Colors
                  ZISwitchE(
                    value: isOn5,
                    style: ZiSwitchEStyle.outline,
                    activeColor: Colors.blue,
                    inactiveColor: Colors.grey,
                    borderColor: Colors.black12,
                    onChanged: (v) => setState(() => isOn5 = v),
                  ),

                  const SizedBox(height: 12),

                  /// Fluent Style (Outside Thumb)
                  ZISwitchE(
                    value: isOn6,
                    thumbStyle: ZiThumbStyle.outside,
                    style: ZiSwitchEStyle.solid,
                    activeColor: Colors.blue,
                    onChanged: (v) => setState(() => isOn6 = v),
                  ),

                  const SizedBox(height: 12),

                  /// Material Soft (Mini Thumb)
                  ZISwitchE(
                    value: isOn7,
                    thumbStyle: ZiThumbStyle.mini,
                    style: ZiSwitchEStyle.minimal,
                    activeColor: Colors.purple,
                    onChanged: (v) => setState(() => isOn7 = v),
                  ),

                  const SizedBox(height: 12),

                  /// Full Custom (Enterprise)
                  ZISwitchE(
                    value: isOn8,
                    style: ZiSwitchEStyle.base,

                    activeIcon: Icons.check,
                    inactiveIcon: Icons.close,

                    activeColor: Colors.green,
                    inactiveColor: Colors.grey.shade400,

                    activeIconColor: Colors.white,
                    inactiveIconColor: Colors.black54,

                    activeThumbColor: Colors.white,
                    inactiveThumbColor: Colors.grey.shade200,

                    borderColor: Colors.black12,

                    size: ZiSwitchESize.large,

                    onChanged: (v) => setState(() => isOn8 = v),
                  ),
                ],
              ),
              const SectionDivider(label: "with loading", isComplete: true),

              /// Loader inside thumb (recommended)
              Row(
                children: [
                  ZISwitchE(
                    value: isOn9,
                    isLoading: isLoading1,
                    style: ZiSwitchEStyle.solid,
                    activeColor: Colors.green,
                    onChanged: (v) async {
                      setState(() => isLoading1 = true);

                      await Future.delayed(const Duration(seconds: 2));

                      setState(() {
                        isOn9 = v;
                        isLoading1 = false;
                      });
                    },
                  ),

                  const SizedBox(height: 12),

                  /// Loading without spinner (disabled state only)
                  ZISwitchE(
                    value: isOn10,
                    isLoading: isLoading2,
                    showLoading: false,
                    style: ZiSwitchEStyle.outline,
                    onChanged: (v) async {
                      setState(() => isLoading2 = true);

                      await Future.delayed(const Duration(seconds: 2));

                      setState(() {
                        isOn10 = v;
                        isLoading2 = false;
                      });
                    },
                  ),

                  const SizedBox(height: 12),

                  /// Loading + Icon Switch
                  ZISwitchE(
                    thumbStyle: ZiThumbStyle.mini,
                    value: isOn11,
                    isLoading: isLoading3,
                    activeIcon: Icons.power_settings_new,
                    inactiveIcon: Icons.power_settings_new,
                    style: ZiSwitchEStyle.solid,
                    activeColor: Colors.red,
                    onChanged: (v) async {
                      setState(() => isLoading3 = true);
                      await Future.delayed(const Duration(seconds: 2));
                      setState(() {
                        isOn11 = v;
                        isLoading3 = false;
                      });
                    },
                  ),
                ],
              ),

              Divider(),
              Divider(),
              const SectionDivider(label: "default", isComplete: true),

              Divider(),
              Divider(),
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
              Divider(),
              Divider(),
              ziGap(10),

              ZiSelectD<String>(
                hint: "Select country",
                value: country,
                options: [
                  ZiSelectOption(value: "pk", label: "Pakistan"),
                  ZiSelectOption(value: "us", label: "USA"),
                ],
                onChanged: (v) => setState(() => country = v),
              ),
              ziGap(10),

              ZiSelectD<String>(
                type: ZiSelectDType.multi,
                values: selectedList,
                options: [
                  ZiSelectOption(value: "pk", label: "Pakistan"),
                  ZiSelectOption(value: "us", label: "USA"),
                  ZiSelectOption(value: "bs", label: "BS"),
                ],
                onMultiChanged: (v) => setState(() => selectedList = v),
              ),
              ziGap(10),

              ZiSelectD<String>(
                type: ZiSelectDType.searchable,
                options: [
                  ZiSelectOption(value: "pk", label: "Pakistan"),
                  ZiSelectOption(value: "us", label: "USA"),
                  ZiSelectOption(value: "bs", label: "BS"),
                ],
                onChanged: (v) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

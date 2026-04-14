import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zi_core/zi_core_io.dart';

class ZiInputDemoForm extends StatefulWidget {
  const ZiInputDemoForm({super.key});

  @override
  State<ZiInputDemoForm> createState() => _ZiInputDemoFormState();
}

class _ZiInputDemoFormState extends State<ZiInputDemoForm> {
  final _formKey = GlobalKey<FormState>();

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final amountCtrl = TextEditingController();
  final cnicCtrl = TextEditingController();
  final usernameCtrl = TextEditingController();
  final descCtrl = TextEditingController();
  final notesCtrl = TextEditingController();
  final searchCtrl = TextEditingController();
  final dateCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ZiScaffoldB(
      appBar: ZiAppBarB(title: "ZiInput Full Form"),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // ================= BASIC =================
            ZiInput(
              label: "Full Name",
              hint: "Enter your full name",
              controller: nameCtrl,
              type: ZiInputType.name,
              isRequired: true,
              variant: ZiInputVariant.stacked,
              prefix: const Icon(Icons.person),
            ),

            const SizedBox(height: 12),

            ZiInput(
              label: "Username",
              hint: "Choose username",
              controller: usernameCtrl,
              type: ZiInputType.username,
              variant: ZiInputVariant.stacked,
              validator: (v) {
                if (v == null || v.length < 4) {
                  return "Min 4 characters required";
                }
                return null;
              },
            ),

            const SizedBox(height: 12),

            ZiInput(
              label: "Email",
              hint: "example@mail.com",
              controller: emailCtrl,
              type: ZiInputType.email,
              isRequired: true,
              variant: ZiInputVariant.stacked,
              prefix: const Icon(Icons.email),
            ),

            const SizedBox(height: 12),

            ZiInput(
              label: "Password",
              hint: "At least 6 characters",
              controller: passwordCtrl,
              type: ZiInputType.password,
              isRequired: true,
              variant: ZiInputVariant.stacked,
            ),

            // ================= CONTACT =================
            const SizedBox(height: 12),

            ZiInput(
              label: "Phone",
              hint: "03XXXXXXXXX",
              controller: phoneCtrl,
              type: ZiInputType.phone,
              variant: ZiInputVariant.stacked,
            ),

            const SizedBox(height: 12),

            ZiInput(
              label: "CNIC",
              hint: "13 digit CNIC",
              controller: cnicCtrl,
              type: ZiInputType.cnic,
              variant: ZiInputVariant.stacked,
            ),

            // ================= FINANCE =================
            const SizedBox(height: 12),

            ZiInput(
              label: "Amount",
              hint: "Enter amount",
              controller: amountCtrl,
              type: ZiInputType.amount,
              variant: ZiInputVariant.stacked,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
              ],
              validator: (v) {
                if (v != null && v.isNotEmpty) {
                  final val = double.tryParse(v);
                  if (val == null || val <= 0) {
                    return "Invalid amount";
                  }
                }
                return null;
              },
            ),

            // ================= SEARCH =================
            const SizedBox(height: 12),

            ZiInput(
              label: "Search",
              hint: "Search anything...",
              controller: searchCtrl,
              type: ZiInputType.search,
              variant: ZiInputVariant.stacked,
              prefix: const Icon(Icons.search),
            ),

            // ================= TEXT AREA =================
            const SizedBox(height: 12),

            ZiInput(
              label: "Description",
              hint: "Minimum 10 characters required",
              controller: descCtrl,
              type: ZiInputType.description,
              isRequired: true,
              variant: ZiInputVariant.stacked,
              validator: (v) {
                if (v == null || v.length < 10) {
                  return "Min 10 characters required";
                }
                return null;
              },
            ),

            const SizedBox(height: 12),

            ZiInput(
              label: "Notes",
              hint: "Optional notes",
              controller: notesCtrl,
              type: ZiInputType.notes,
              variant: ZiInputVariant.stacked,
            ),

            // ================= DATE =================
            const SizedBox(height: 12),

            // ZiInput(
            //   label: "Date",
            //   hint: "Select date",
            //   controller: dateCtrl,
            //   type: ZiInputType.date,
            //   isRequired: true,
            //   variant: ZiInputVariant.stacked,
            //   suffix: const Icon(Icons.calendar_today),
            //   onTap: ZiTapAction((context) async {
            //     final picked = await showDatePicker(
            //       context: context,
            //       firstDate: DateTime(2000),
            //       lastDate: DateTime(2100),
            //       initialDate: DateTime.now(),
            //     );

            //     if (picked != null) {
            //       dateCtrl.text =
            //           "${picked.year}-${picked.month}-${picked.day}";
            //     }
            //   }),
            // ),

            // ================= SUBMIT =================
            const SizedBox(height: 20),

            // ElevatedButton(
            //   onPressed: () {
            //     final valid = _formKey.currentState!.validate();

            //     if (!valid) {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(content: Text("Fix errors first ❌")),
            //       );
            //       return;
            //     }

            //     ScaffoldMessenger.of(context).showSnackBar(
            //       const SnackBar(content: Text("Form Valid ✅")),
            //     );
            //   },
            //   child: const Text("Submit"),
            // ),
            Row(
              children: [
                ZiButtonB(
                  label: "Cancel",
                  variant: ZiButtonVariantB.secondary,
                  action: () => Navigator.pop(context),
                ),
                ziGap(16),
                Expanded(
                  child: ZiButtonB(
                    label: "Submit",
                    expand: true,
                    action: () {
                      final valid = _formKey.currentState!.validate();
                      if (!valid) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Fix errors first ❌")),
                        );
                        return;
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Form Valid ✅")),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

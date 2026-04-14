import 'package:flutter/material.dart';
import 'package:zi/zi_collections/sub_pages/dummy_input_form.dart';
import 'package:zi_core/zi_core_io.dart';

class ViewZiInputs extends StatelessWidget {
  const ViewZiInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Zi Inputs')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionDivider(label: 'Variants', isComplete: true),
            Text(
              "\t\t\tVariants: Filled, Stacked, Outline, Animate Label Outline, Underlined, Animate Label",
            ),
            ziGap(16),
            ZiInput(
              label: 'NA',
              hint: 'Label Filled',
              variant: ZiInputVariant.filled,
            ),
            ziGap(16),
            ZiInput(
              label: 'Label Stacked',
              hint: 'Hint Here',
              variant: ZiInputVariant.stacked,
            ),
            ziGap(16),
            ZiInput(
              label: 'Label Outline',
              hint: 'Hint Here',
              variant: ZiInputVariant.outline,
            ),
            ziGap(16),
            ZiInput(
              label: 'Animate Label Outline',
              hint: 'Hint Here',
              variant: ZiInputVariant.animateLabelOutline,
            ),
            ziGap(16),
            ZiInput(
              label: '',
              hint: 'Hint Here',
              variant: ZiInputVariant.underlined,
            ),
            ziGap(16),
            ZiInput(
              label: 'Animate Label',
              hint: 'Hint Here',
              variant: ZiInputVariant.underlined,
            ),
            ziGap(16),
            ziGap(16),
            SectionDivider(label: 'Types', isComplete: true),
            Text("\t\t\tTypes: Text, Number, Email, Password, Multiline"),
            ziGap(16),
            ZiInput(
              label: 'Text Input',
              hint: 'Enter text here',
              type: ZiInputType.text,
            ),
            ziGap(16),
            ZiInput(
              label: 'Number Input',
              hint: 'Enter number here',
              type: ZiInputType.number,
            ),
            ziGap(16),
            ZiInput(
              label: 'Email Input',
              hint: 'Enter email here',
              type: ZiInputType.email,
            ),
            ziGap(16),
            ZiInput(
              label: 'Password Input',
              hint: 'Enter password here',
              type: ZiInputType.password,
            ),
            ziGap(16),
            ZiInput(
              label: 'Multiline Input',
              hint: 'Enter multiple lines of text here',
              type: ZiInputType.multiline,
            ),
            ziGap(16),
            SectionDivider(label: 'More Customizations', isComplete: true),
            ziGap(16),
            ZiInput(
              enabled: false,
              label: 'user@gmail.com - Disabled Input',
              hint: 'Enter email here',
              type: ZiInputType.email,
              variant: ZiInputVariant.filled,
              style: ZiInputStyle(fillColor: ZiColors.border),
            ),
            ziGap(16),
            ZiInput(
              label: 'Multiline Input',
              hint: 'Enter multiple lines of text here',
              type: ZiInputType.multiline,
            ),
            ziGap(16),
            ZiInput(
              label: 'NA',
              hint: 'Label Filled',
              variant: ZiInputVariant.stacked,
              style: ZiInputStyle(),
              type: ZiInputType.number,
            ),
            //fill primaray with full radious and white text
            ziGap(16),
            ZiInput(
              label: 'Label Stacked',
              hint: 'Hint Here',
              variant: ZiInputVariant.filled,
              style: ZiInputStyle(
                fillColor: ZiColors.primary,
                textStyle: const TextStyle(color: Colors.white),
                radius: 30,
                labelStyle: const TextStyle(color: Colors.white),
                hintStyle: const TextStyle(color: Colors.white70),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
              ),
            ),
            ziGap(16),
            // outline with prefix and suffix icons and custom colors
            ZiInput(
              label: 'Label with prefix and suffix',
              hint: 'Hint Here',
              variant: ZiInputVariant.stacked,
              style: ZiInputStyle(borderColor: ZiColors.secondary),
              prefix: Icon(Icons.person_outline, color: ZiColors.grayLight),
              suffix: const Icon(Icons.call, color: ZiColors.grayLight),
            ),
            ziGap(16),
            ZiInput(
              label: 'long text to test layout overflow',
              style: ZiInputStyle(),
              variant: ZiInputVariant.filled,
            ),
            ziGap(16),
            ZiInput(
              label: 'Username',
              errorText: 'Username already taken',
              variant: ZiInputVariant.outline,
            ),
            ziGap(16),
            // label outside
            const ZiInput(
              label: 'Phone Number',
              hint: '+92 3xx xxxxxxx',
              variant: ZiInputVariant.stacked,
              type: ZiInputType.number,
            ),
            ziGap(16),
            // boreder radius full
            const ZiInput(
              label: 'Notes',
              hint: 'Write something...',
              type: ZiInputType.notes,
              variant: ZiInputVariant.stacked,
            ),
            // Divider(),

            // ZiInput(
            //   label: "Test",
            //   hint: "Hint ",
            //   type: ZiInputType.email,
            //   variant: ZiInputVariant.stacked,
            // ),

            // ZiInput(
            //   label: "Test",
            //   hint: "Hint ",
            //   type: ZiInputType.text,
            //   keyboardType: TextInputType.number,
            //   variant: ZiInputVariant.stacked,
            // ),

            // ZiInput(
            //   label: "Test",
            //   hint: "Hint ",
            //   inputFormatters: [LengthLimitingTextInputFormatter(10)],
            //   variant: ZiInputVariant.stacked,
            // ),

            // ZiInput(
            //   label: "Test",
            //   hint: "Hint ",
            //   type: ZiInputType.description,
            //   minLines: 3,
            //   maxLines: 6,
            //   variant: ZiInputVariant.stacked,
            // ),

            // Expanded(child: ZiInput(type: ZiInputType.expandable)),
          ],
        ),
      ),
      floatingActionButton: ZiFABIconBtn(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ZiInputDemoForm()),
          );
        },
        isMini: true,
        tooltip: "Go to form demo",
        icon: Icons.input_rounded,
      ),
    );
  }

  // Widget _gap() => const SizedBox(height: 20);
}

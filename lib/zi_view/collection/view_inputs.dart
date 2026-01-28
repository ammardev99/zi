import 'package:flutter/material.dart';
import 'package:zi/zi_core/widgets/molecules/forms/zi_input.dart';
import 'package:zi/zi_core/widgets/molecules/forms/zi_input_style.dart';
import 'package:zi/zi_core/zi_core_io.dart';

import '../../zi_core/widgets/molecules/forms/zi_input_type.dart';

class ViewZiInputs extends StatelessWidget {
  const ViewZiInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zi Inputs')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _gap(),
            ZiInput(
              label: 'Email',
              hint: 'example@email.com',
              prefix: Icon(Icons.email_outlined),
              variant: ZiInputVariant.outline,
            ),
            _gap(),
            ZiInput(
              label: 'Password',
              hint: '••••••••',
              suffix: Icon(Icons.visibility_off),
              type: ZiInputType.password,
              variant: ZiInputVariant.outline,
              style: ZiInputStyle(),
            ),
            _gap(),
            ZiInput(
              hint:
                  'Very very very very very long text to test layout overflow',
              style: ZiInputStyle(),
              variant: ZiInputVariant.filled,
            ),

            _gap(),
            ZiInput(
              label: 'Username',
              errorText: 'Username already taken',
              variant: ZiInputVariant.outline,
            ),
            _gap(),
            ZiInput(
              label: 'Country',
              hint: 'Pakistan',

              variant: ZiInputVariant.stacked,
            ),

            _gap(),
            ZiInput(
              label: 'Username',
              hint: 'john_doe',
              prefix: Icon(Icons.person_outline),
              suffix: Icon(Icons.check_circle_outline),
              variant: ZiInputVariant.outline,
            ),
            _gap(), // password
            ZiInput(
              label: 'Password',
              hint: '••••••••',
              type: ZiInputType.password,
              suffix: Icon(Icons.visibility_off),
              variant: ZiInputVariant.outline,
            ),

            _gap(),
            // with hint
            const ZiInput(hint: 'Search...'),
            _gap(),

            // with label and hint
            const ZiInput(
              label: 'Email',
              hint: 'example@email.com',
              type: ZiInputType.email,
            ),
            _gap(),

            // with suffix icon and prefix icon
            const ZiInput(
              label: 'Username',
              hint: 'john_doe',
              prefix: Icon(Icons.person_outline),
              suffix: Icon(Icons.check_circle_outline),
            ),
            _gap(),
            // with obscure text
            const ZiInput(
              label: 'Password',
              hint: '••••••••',
              type: ZiInputType.password,
            ),
            _gap(),

            //  test layout overflow
            const ZiInput(
              label: 'Very Long Label That Should Not Break The Layout',
              hint: 'This is a very very long hint to test overflow handling',
              prefix: Icon(Icons.warning_amber),
              suffix: Icon(Icons.info_outline),
            ),
            _gap(),

            // label inside
            const ZiInput(
              label: 'Full Name',
              hint: 'John Smith',
              variant: ZiInputVariant.outline,
            ),
            _gap(),

            // label outside
            const ZiInput(
              label: 'Phone Number',
              hint: '+92 3xx xxxxxxx',
              variant: ZiInputVariant.stacked,
              type: ZiInputType.number,
            ),
            _gap(),
            // with baground
            const ZiInput(
              label: 'Address',
              hint: 'Street, City',
              variant: ZiInputVariant.filled,
            ),

            _gap(),
            // boreder radius full
            const ZiInput(
              label: 'Notes',
              hint: 'Write something...',
              type: ZiInputType.multiline,
              variant: ZiInputVariant.stacked,
            ),
            _gap(),

            ZiInput(
              hint: 'john_doe',
              onChanged: (value) {
                // Handle input change
                debugPrint('Username: $value');
              },
            ),
            _gap(),
            SectionDivider(label: 'Email'),
            const ZiInput(
              label: 'Email',
              hint: 'example@email.com',
              type: ZiInputType.email,
            ),
            _gap(),
            const ZiInput(
              label: 'Password',
              hint: 'Minimum 6 characters',
              type: ZiInputType.password,
            ),

            _gap(),
            const ZiInput(label: 'Age', hint: '18', type: ZiInputType.number),

            _gap(),
            SectionDivider(label: 'Multiline'),
            const ZiInput(
              label: 'Description',
              hint: 'Write something...',
              type: ZiInputType.multiline,
            ),
            _gap(),
            SectionDivider(label: 'Filled Variant'),
            const ZiInput(
              label: 'Username',
              hint: 'john_doe',
              variant: ZiInputVariant.filled,
            ),
            _gap(),
            SectionDivider(label: 'Underlined Variant'),
            const ZiInput(
              label: 'Phone',
              hint: '+92 3xx xxxxxxx',
              variant: ZiInputVariant.underlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 20);
}

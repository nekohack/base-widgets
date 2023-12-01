import 'package:base_widgets/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('CustomTextField types should look correct', (tester) async {
    final builder = GoldenBuilder.grid(columns:2, widthToHeightRatio: 1)
      ..addScenario('Default', CustomTextField(
        controller: TextEditingController(),
        fillColor: Colors.white,
      ))
      ..addScenario('With Hint Text', CustomTextField(
        controller: TextEditingController(),
        fillColor: Colors.white,
        hintText: 'Please enter your hint text here.',
      ));
    await tester.pumpWidgetBuilder(builder.build());
    await screenMatchesGolden(tester, 'custom_text_field_types_widget');
  });
}

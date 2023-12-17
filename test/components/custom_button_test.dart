import 'package:base_widgets/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('CustomButton types should look correct', (tester) async {
    final builder = GoldenBuilder.grid(columns:2, widthToHeightRatio: 1)
      ..addScenario('Blue', CustomButton(
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        title: 'Click',
        onPressed: () {},
      ))
      ..addScenario('Green', CustomButton(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        title: 'Click',
        onPressed: () {},
      ));
    await tester.pumpWidgetBuilder(builder.build());
    await screenMatchesGolden(tester, 'custom_button_types_widget');
  });
}

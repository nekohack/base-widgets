import 'package:base_widgets/components/dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('DropdownField types should look correct', (tester) async {
    final builder = GoldenBuilder.grid(columns:2, widthToHeightRatio: 1)
      ..addScenario('Blue', DropdownField(
        textColor: Colors.blue,
        underlineColor: Colors.deepPurpleAccent,
        dropdownList: const ['One', 'Two', 'Three', 'Four'],
        onChanged: (String? value) {
          print(value);
        },
      ))
      ..addScenario('Green', DropdownField(
        textColor: Colors.green,
        underlineColor: Colors.teal,
        dropdownList: const ['One', 'Two', 'Three', 'Four'],
        onChanged: (String? value) {
          print(value);
        },
      ));
    await tester.pumpWidgetBuilder(builder.build());
    await screenMatchesGolden(tester, 'dropdown_field_types_widget');
  });
}

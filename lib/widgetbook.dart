import 'package:base_widgets/components/custom_button.dart';
import 'package:base_widgets/components/custom_text_field.dart';
import 'package:base_widgets/containers/blue_container.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookFolder(
          name: 'Widgets',
          children: [
            WidgetbookComponent(
              name: 'CustomButton',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => CustomButton(
                    backgroundColor: Colors.blue,
                    title: 'Click',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'CustomTextField',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => CustomTextField(
                    controller: TextEditingController(),
                    fillColor: Colors.white,
                  ),
                ),
                WidgetbookUseCase(
                  name: 'With Hint Text',
                  builder: (context) => CustomTextField(
                    controller: TextEditingController(),
                    fillColor: Colors.white,
                    hintText: 'Please enter your hint text here.',
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'CustomContainer',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => blueContainerUseCase(context),
                ),
              ],
            ),
          ],
        ),
      ],
      addons: [],
      integrations: [
        WidgetbookCloudIntegration(),
      ],
    );
  }
}
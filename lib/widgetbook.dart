import 'package:base_widgets/components/boarding_card.dart';
import 'package:base_widgets/components/custom_button.dart';
import 'package:base_widgets/components/custom_dropdown_field.dart';
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
              name: 'BoardingCard',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: BoardingCard(
                      boardedAt: DateTime.now(),
                      departure: 'ITM',
                      arrival: 'HND',
                      airline: 'JAL',
                      boardingType: 'Boeing777-2',
                      registration: 'JA745A',
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'CustomButton',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: CustomButton(
                      backgroundColor: Colors.blue,
                      title: 'Click',
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'CustomDropdownField',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: CustomDropdownField(
                      color: Colors.blue,
                      underlineColor: Colors.deepPurpleAccent,
                      dropdownList: const ['One', 'Two', 'Three', 'Four'],
                      onChanged: (String? value) {
                        print(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'CustomTextField',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: CustomTextField(
                      controller: TextEditingController(),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'With Hint Text',
                  builder: (context) => Center(
                    child: CustomTextField(
                      controller: TextEditingController(),
                      fillColor: Colors.white,
                      hintText: 'Please enter your hint text here.',
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'CustomContainer',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: blueContainerUseCase(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
      addons: [
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
      ],
      integrations: [
        WidgetbookCloudIntegration(),
      ],
    );
  }
}
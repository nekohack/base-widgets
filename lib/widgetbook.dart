import 'package:base_widgets/components/boarding_card.dart';
import 'package:base_widgets/components/bottom_navigation_tab.dart';
import 'package:base_widgets/components/custom_button.dart';
import 'package:base_widgets/components/datepicker_field.dart';
import 'package:base_widgets/components/dropdown_field.dart';
import 'package:base_widgets/components/top_navigation_tab.dart';
import 'package:base_widgets/components/custom_text_field.dart';
import 'package:base_widgets/containers/blue_container.dart';
import 'package:base_widgets/models/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgetbook.directories.g.dart';

void main() {
  runApp(WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  WidgetbookApp({Key? key}) : super(key: key);

  final List<TabItem> _tabItems = [
    TabItem(icon: Icons.home.codePoint, name: 'Home'),
    TabItem(icon: Icons.favorite.codePoint, name: 'Favorite'),
    TabItem(icon: Icons.notification_add.codePoint, name: 'Add'),
  ];

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
                      departure: '大阪伊丹 / ITM',
                      arrival: '東京羽田 / HND',
                      airline: 'JAL',
                      boardingType: 'Boeing777-2',
                      registration: 'JA745A',
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'BottomNavigationTab',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: BottomNavigationTab(
                      title: 'BottomNavigationTab',
                      tabItems: _tabItems,
                      screens: const [
                        Center(
                          child: Icon(Icons.home),
                        ),
                        Center(
                          child: Icon(Icons.favorite),
                        ),
                        Center(
                          child: Icon(Icons.notification_add),
                        ),
                      ],
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
                      textColor: Colors.white,
                      title: 'Click',
                      onPressed: () {},
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'With Border',
                  builder: (context) => Center(
                    child: CustomButton(
                      textColor: Colors.white,
                      borderColor: Colors.blue,
                      title: 'Click',
                      onPressed: () {},
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'maxFinite',
                  builder: (context) => Center(
                    child: CustomButton(
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      title: 'Click',
                      maxFinite: true,
                      onPressed: () {},
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'BorderRadius.circular(4)',
                  builder: (context) => Center(
                    child: CustomButton(
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      title: 'Click',
                      borderRadius: BorderRadius.circular(4),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'DatepickerField',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: DatepickerField(
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      title: 'Datepicker',
                      onChanged: (DateTime? value) {
                        print(value);
                      },
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'maxFinite',
                  builder: (context) => Center(
                    child: DatepickerField(
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      title: 'Datepicker',
                      maxFinite: true,
                      onChanged: (DateTime? value) {
                        print(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'DropdownField',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: DropdownField(
                      textColor: Colors.blue,
                      underlineColor: Colors.deepPurpleAccent,
                      dropdownList: const ['One', 'Two', 'Three', 'Four'],
                      onChanged: (String? value) {
                        print(value);
                      },
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'With Border',
                  builder: (context) => Center(
                    child: DropdownField(
                      textColor: Colors.blue,
                      borderColor: Colors.deepPurpleAccent,
                      dropdownList: const ['One', 'Two', 'Three', 'Four'],
                      onChanged: (String? value) {
                        print(value);
                      },
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Expanded',
                  builder: (context) => Center(
                    child: DropdownField(
                      textColor: Colors.blue,
                      underlineColor: Colors.deepPurpleAccent,
                      dropdownList: const ['One', 'Two', 'Three', 'Four'],
                      isExpanded: true,
                      onChanged: (String? value) {
                        print(value);
                      },
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'BorderRadius.circular(4)',
                  builder: (context) => Center(
                    child: DropdownField(
                      textColor: Colors.blue,
                      underlineColor: Colors.deepPurpleAccent,
                      dropdownList: const ['One', 'Two', 'Three', 'Four'],
                      borderRadius: BorderRadius.circular(4),
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
                      color: Colors.blue,
                      fillColor: Colors.white,
                      onChanged: (String? value) {
                        print(value);
                      },
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'With Hint Text',
                  builder: (context) => Center(
                    child: CustomTextField(
                      controller: TextEditingController(),
                      color: Colors.blue,
                      fillColor: Colors.white,
                      hintText: 'Please enter your hint text here.',
                      onChanged: (String? value) {
                        print(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'TopNavigationTab',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: TopNavigationTab(
                      title: 'TopNavigationTab',
                      tabItems: _tabItems,
                      screens: const [
                        Center(
                          child: Icon(Icons.home),
                        ),
                        Center(
                          child: Icon(Icons.favorite),
                        ),
                        Center(
                          child: Icon(Icons.notification_add),
                        ),
                      ],
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
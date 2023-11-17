import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'with blue color',
  type: Container,
)
Widget blueContainerUseCase(BuildContext context) {
  return Column(
    children: [
      Container(
        color: Colors.blue,
        child: const SizedBox.square(
          dimension: 100,
        ),
      ),
    ],
  );
}
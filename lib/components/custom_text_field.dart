import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Color fillColor;
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.fillColor,
    this.hintText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
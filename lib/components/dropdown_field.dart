import 'package:flutter/material.dart';

class DropdownField extends StatelessWidget {
  final Color color;
  final Color underlineColor;
  final List<String> dropdownList;
  final Function(String?) onChanged;

  const DropdownField({
    Key? key,
    required this.color,
    required this.underlineColor,
    required this.dropdownList,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dropdownValue = dropdownList.first;
    return DropdownButton<String>(
      items: dropdownList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: TextStyle(color: color),
      underline: Container(
        height: 2,
        color: underlineColor,
      ),
      onChanged: onChanged,
    );
  }
}
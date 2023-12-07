import 'package:flutter/material.dart';

class DropdownField extends StatefulWidget {
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
  _DropdownFieldState createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  int currentValue = 0;

  _onChanged(String? value) {
    setState(() {
      for (int i = 0; i < widget.dropdownList.length; i++) {
        if (widget.dropdownList[i] == value) currentValue = i;
      }
    });
    widget.onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.dropdownList[currentValue];
    return DropdownButton<String>(
      items: widget.dropdownList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: TextStyle(color: widget.color),
      underline: Container(
        height: 2,
        color: widget.underlineColor,
      ),
      onChanged: _onChanged,
    );
  }
}
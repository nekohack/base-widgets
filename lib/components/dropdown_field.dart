import 'package:flutter/material.dart';

class DropdownField extends StatefulWidget {
  final Color textColor;
  final Color underlineColor;
  final Color borderColor;
  final List<String> dropdownList;
  final BorderRadius borderRadius;
  final bool? isExpanded;
  final Function(String?) onChanged;

  const DropdownField({
    Key? key,
    required this.textColor,
    this.underlineColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    required this.dropdownList,
    this.borderRadius = BorderRadius.zero,
    required this.onChanged,
    this.isExpanded,
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
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: widget.borderColor),
          borderRadius: widget.borderRadius,
        ),
      ),
      child: DropdownButton<String>(
        items: widget.dropdownList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: TextStyle(color: widget.textColor),
        borderRadius: widget.borderRadius,
        underline: Container(
          height: 2,
          color: widget.underlineColor,
        ),
        isExpanded: widget.isExpanded ?? false,
        onChanged: _onChanged,
      ),
    );
  }
}
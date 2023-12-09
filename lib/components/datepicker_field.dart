import 'package:flutter/material.dart';

class DatepickerField extends StatefulWidget {
  final Color backgroundColor;
  final String title;
  final bool? maxFinite;
  final Function(DateTime?) onChanged;

  const DatepickerField({
    Key? key,
    required this.backgroundColor,
    required this.title,
    this.maxFinite = false,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DatepickerFieldState createState() => _DatepickerFieldState();
}

class _DatepickerFieldState extends State<DatepickerField> {
  DateTime datetime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor,
        fixedSize: widget.maxFinite != false ? const Size.fromWidth(double.maxFinite) : null,
      ),
      onPressed: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: datetime,
          firstDate: DateTime.now().subtract(const Duration(days: 60)),
          lastDate: DateTime.now().add(const Duration(days: 60)),
        );
        setState(() {
          if (picked != null) {
            datetime = picked;
          }
          widget.onChanged(datetime);
        });
      },
      child: Text(widget.title),
    );
  }
}
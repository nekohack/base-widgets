import 'package:flutter/material.dart';

class DatepickerField extends StatefulWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final String title;
  final BorderRadius borderRadius;
  final bool? maxFinite;
  final Function(DateTime?) onChanged;

  const DatepickerField({
    Key? key,
    this.backgroundColor = Colors.transparent,
    required this.textColor,
    this.borderColor = Colors.transparent,
    required this.title,
    this.borderRadius = BorderRadius.zero,
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
        foregroundColor: widget.textColor,
        fixedSize: widget.maxFinite != false ? const Size.fromWidth(double.maxFinite) : null,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: widget.borderColor),
          borderRadius: widget.borderRadius,
        ),
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
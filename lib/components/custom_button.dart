import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final String title;
  final BorderRadius borderRadius;
  final bool? maxFinite;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    required this.title,
    this.borderRadius = BorderRadius.zero,
    this.maxFinite = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: maxFinite != false ? const Size.fromWidth(double.maxFinite) : null,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: borderRadius,
        ),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final bool? maxFinite;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.title,
    this.maxFinite = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: maxFinite != false ? const Size.fromWidth(double.maxFinite) : null,
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
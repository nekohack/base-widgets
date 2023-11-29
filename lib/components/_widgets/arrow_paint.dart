import 'package:flutter/material.dart';

class ArrowPaint extends CustomPainter {
  final Color color;

  const ArrowPaint({required this.color}) : super();

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    Path path = Path();

    path
      ..lineTo(size.width * .85, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width * .85, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
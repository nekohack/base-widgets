import 'package:flutter/material.dart';

class PaperClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const _clipSize = Size(24, 24);

    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - _clipSize.height);
    path.lineTo(size.width - _clipSize.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

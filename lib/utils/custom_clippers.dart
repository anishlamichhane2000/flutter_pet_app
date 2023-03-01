import 'dart:math';

import 'package:flutter/material.dart';

class CurverdBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // ignore: todo
    // TODO: implement getClip
    final roundingHeight = size.height * 2 / 5;

    final filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);

    final path = Path();
    path.addRect(filledRectangle);

    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // ignore: todo
    // TODO: implement shouldReclip
    return true;
  }
}

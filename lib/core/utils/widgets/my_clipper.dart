import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.0057143);
    path_0.quadraticBezierTo(size.width * 0.5341438, size.height * 0.0018250,
        size.width * 0.7121917, size.height * 0.0005286);
    path_0.cubicTo(
        size.width * 1.1539167,
        size.height * -0.0398857,
        size.width * 0.5883500,
        size.height * 0.3626429,
        size.width * 0.9980500,
        size.height * 0.3545571);
    path_0.quadraticBezierTo(size.width * 0.9985417, size.height * 0.5721000,
        size.width, size.height);
    path_0.lineTo(size.width * -0.0008333, size.height);
    path_0.lineTo(0, size.height * 0.0057143);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

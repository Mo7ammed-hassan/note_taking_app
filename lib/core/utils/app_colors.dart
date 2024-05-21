import 'package:flutter/material.dart';

abstract class AppColors {
  static Color primaryColor = const Color(0xff6B4EFF);
  static Color mainColor = const Color(0xff292150);
  static Color secoundryColor = const Color(0xff090A0A);
  static Color accentColor = const Color(0xff836CFB);
  static Color cardHeadColor = const Color(0xff2A2251);
  static Color cardBodyColor = const Color(0xff72777A);
  static Color noteBodyColor = const Color(0xff2A2251);
  static Color circleBackgroundColor = const Color(0xffE7E7FF);
  static Color scaffoldColor = const Color(0xffF2F4F5);
  static Color splashColor = const Color(0xffFFFFFF);

  static const availiableSpaceGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffd9d3f5),
      Color(0xff836CFB),
    ],
  );

  static const primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xff836bfb),
      Color(0xff6e52fe),
    ],
  );
}

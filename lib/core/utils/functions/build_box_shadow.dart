import 'package:flutter/material.dart';

BoxShadow buildBoxShadow() {
  return const BoxShadow(
    color: Color(0xffb3a4ff),
    blurRadius: 4,
    blurStyle: BlurStyle.inner,
    offset: Offset(7, 10), // Shadow position
  );
}

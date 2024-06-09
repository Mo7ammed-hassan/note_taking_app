
import 'package:flutter/material.dart';

class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  CustomFloatingActionButtonLocation(this.endOffset);

  final double endOffset;

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double scaffoldBottomY = scaffoldGeometry.contentBottom;

    return Offset(
      scaffoldGeometry.scaffoldSize.width / 2 - 28.0,
      scaffoldBottomY - 28.0 - endOffset,
    );
  }
}

FloatingActionButtonLocation customFloatingActionButtonLocation(
    double endOffset) {
  return CustomFloatingActionButtonLocation(endOffset);
}
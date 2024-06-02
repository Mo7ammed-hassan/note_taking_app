import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child, this.padding, this.color});
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.only(left: 25),
      decoration: ShapeDecoration(
        color:color ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: child,
    );
  }
}

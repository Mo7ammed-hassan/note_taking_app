import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconBottomAppBar extends StatelessWidget {
  const CustomIconBottomAppBar({
    super.key,
    required this.onTap,
    required this.image,
    required this.isSelected,
  });

  final VoidCallback onTap;
  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        image,
        colorFilter: _changeSvgColor(checked: isSelected),
      ),
    );
  }

  ColorFilter _changeSvgColor({required bool checked}) {
    return ColorFilter.mode(
      checked ? const Color(0xff2A2251) : const Color(0xffBEB9DD),
      BlendMode.srcIn,
    );
  }
}

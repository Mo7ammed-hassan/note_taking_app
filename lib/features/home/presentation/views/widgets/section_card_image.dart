import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';

class NoteCardItemImage extends StatelessWidget {
  const NoteCardItemImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 52.52, maxHeight: 52.52),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: AppColors.circleBackgroundColor,
            ),
            child: Center(
              child: SvgPicture.asset(
                //width: 27.58,
                colorFilter: const ColorFilter.mode(
                  Color(0xff6B4EFF),
                  BlendMode.srcIn,
                ),
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

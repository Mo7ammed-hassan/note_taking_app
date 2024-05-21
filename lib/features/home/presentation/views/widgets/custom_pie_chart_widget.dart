import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

class CustomPieChartWidget extends StatelessWidget {
  const CustomPieChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 68),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              //color: Colors.transparent.withOpacity(0.1),
              gradient: AppColors.availiableSpaceGradient,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
            child: Image.asset(Assets.imagesPieChart),
          ),
        ),
      ),
    );
  }
}

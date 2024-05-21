import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';
import 'package:note_taking_app/core/utils/functions/build_box_shadow.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

class ShowSpacingCard extends StatelessWidget {
  const ShowSpacingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 358, maxHeight: 141),
      child: AspectRatio(
        aspectRatio: 358 / 141,
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              buildBoxShadow(),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // image
                Container(
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
                const SizedBox(width: 25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // title
                    Text(
                      'Available Space',
                      style: AppTextStyles.textStyle20Black,
                    ),
                    Text(
                      '20 .254 GB of 25 GB Used',
                      style: AppTextStyles.textStyle12SemiBold
                          .copyWith(color: Colors.white54),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

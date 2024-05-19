import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // --title--
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Note-Taking ',
                style: AppTextStyles.textStyle24Black
                    .copyWith(color: AppColors.primaryColor),
              ),
              TextSpan(
                text: 'App',
                style: AppTextStyles.textStyle24Black,
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        Image.asset(Assets.imagesDiary),
        const SizedBox(height: 100),

        Text(
          'Save and share notes',
          style: AppTextStyles.textStyle24Black
              .copyWith(fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}

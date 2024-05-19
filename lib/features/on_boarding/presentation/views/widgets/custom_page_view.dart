import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        const SizedBox(height: 35),
        Image.asset(Assets.imagesDiary),
        const Expanded(child: SizedBox(height: 60)),
        Text(
          'Save and share notes',
          style: AppTextStyles.textStyle24Black
              .copyWith(fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}

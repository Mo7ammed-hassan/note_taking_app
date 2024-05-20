import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';

void showSnakBar(BuildContext context,{required String title}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.splashColor,
      content: Text(
        title,
        style: AppTextStyles.textStyle12Bold,
      ),
    ),
  );
}

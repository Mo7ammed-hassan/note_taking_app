import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_stylesdart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.onTap, required this.title});
  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
        decoration: ShapeDecoration(
          color: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyles.textStyle16Medium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

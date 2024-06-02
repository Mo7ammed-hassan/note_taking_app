import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';

class CustomAddNoteFloatingActionBtn extends StatelessWidget {
  const CustomAddNoteFloatingActionBtn({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: () {},
      label: Text(
        title,
        style: AppTextStyles.textStyle16ExtraBold
            .copyWith(fontSize: 14, color: Colors.white),
      ),
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}

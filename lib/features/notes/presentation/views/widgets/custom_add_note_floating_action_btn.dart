import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/add_note_view.dart';

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
      onPressed: () {
        //GoRouter.of(context).push('/addNote');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddNoteView(),
          ),
        );
      },
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

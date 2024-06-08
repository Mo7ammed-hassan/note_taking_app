import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';

class AddNotePageBody extends StatefulWidget {
  const AddNotePageBody({super.key});

  @override
  State<AddNotePageBody> createState() => _AddNotePageBodyState();
}

class _AddNotePageBodyState extends State<AddNotePageBody> {
  // controllers
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Address of note
        TextField(
          cursorColor: AppColors.primaryColor,
          controller: _titleController,
          style: AppTextStyles.textStyle18ExtraBold,
          decoration: InputDecoration(
            hintText: 'Address',
            hintStyle: AppTextStyles.textStyle18ExtraBold,
            border: InputBorder.none,
          ),
          maxLines: 5,
        ),
        // Note body
        // to make the note text field take up all the remaining space. used 'Expanded'
        Expanded(
          child: TextField(
            controller: _noteController,
            style: AppTextStyles.textStyle14Bold,
            decoration: InputDecoration(
              hintText: 'Note',
              hintStyle: AppTextStyles.textStyle14Bold,
              border: InputBorder.none,
            ),
            maxLines: null, // to expand vertically as needed.
            expands: true, //  to fill the available space.
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class EditNoteWritingSection extends StatelessWidget {
  const EditNoteWritingSection({
    super.key,
    required this.titleController,
    required this.noteController,
    required this.notesEntity,
  });
  final TextEditingController titleController;
  final TextEditingController noteController;
  final NotesEntity notesEntity;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Address of note
        SliverToBoxAdapter(
          child: TextField(
            cursorColor: AppColors.primaryColor,
            controller: titleController,
            style: AppTextStyles.textStyle18Bold,
            decoration: InputDecoration(
              hintText: null,
              hintStyle: AppTextStyles.textStyle18Bold,
              border: InputBorder.none,
            ),
            maxLines: null,
            expands:
                false, // Remove expands here to avoid conflict within a scrollable
          ),
        ),
        // Note body
        // to make the note text field take up all the remaining space. used 'Expanded'
        SliverFillRemaining(
          hasScrollBody: false,
          child: TextField(
            controller: noteController,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
            decoration: InputDecoration(
              hintText: null,
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
              border: InputBorder.none,
            ),
            expands: true, //  to fill the available space.
            maxLines: null,
          ),
        ),
      ],
    );
  }
}

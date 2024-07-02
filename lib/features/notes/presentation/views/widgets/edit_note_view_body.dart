import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_edit_note_app_bar.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/edit_note_writing_section.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.boxName,
    required this.index,
    required this.notesEntity,
  });
  final String boxName;
  final int index;
  final NotesEntity notesEntity;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
// Create the controllers here
  final TextEditingController titleController = TextEditingController();

  final TextEditingController noteController = TextEditingController();
  @override
  void dispose() {
    titleController.dispose();
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    titleController.text = widget.notesEntity.title;
    noteController.text = widget.notesEntity.content;
    return Column(
      children: [
        CustomEditNoteAppBar(
          title: 'Edit Note',
          titleController: titleController,
          noteController: noteController,
          boxName: widget.boxName,
          index: widget.index,
        ),
        Expanded(
          child: EditNoteWritingSection(
            notesEntity: widget.notesEntity,
            titleController: titleController,
            noteController: noteController,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_add_note_app_bar.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/note_writing_section.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.boxName,
    required this.index,
  });
  final String boxName;
  final int index;
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
    return Column(
      children: [
        CustomAddNoteAppBar(
          title: 'Edit Note',
          titleController: titleController,
          noteController: noteController,
          boxName: widget.boxName,
          index: widget.index,
        ),
        Expanded(
          child: NoteWritingSection(
            titleController: titleController,
            noteController: noteController,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_add_note_app_bar.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/note_writing_section.dart';

class AddNoteViewBody extends StatelessWidget {
  const AddNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAddNoteAppBar(
          title: 'Add Note',
        ),
        Expanded(
          child: NoteWritingSection(),
        ),
      ],
    );
  }
}

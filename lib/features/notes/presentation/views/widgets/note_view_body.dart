import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_app_bar.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/note_card_grid_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // custom note app Bar
        SafeArea(child: CustomNoteAppBar()),
        // notes
        Expanded(child: NotesCardGridView()),
      ],
    );
  }
}

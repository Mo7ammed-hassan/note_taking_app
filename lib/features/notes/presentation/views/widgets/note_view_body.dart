import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_add_note_floating_action_btn.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/main_body_contet.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        // Main content (app bar and notes)
        MainBodyContent(),
        // Add new note (FloatingActionButton)
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:
                EdgeInsets.only(bottom: 60), // Move the button up by 50 pixels
            child: CustomAddNoteFloatingActionBtn(
              title: 'Add New Notes',
            ),
          ),
        ),
      ],
    );
  }
}

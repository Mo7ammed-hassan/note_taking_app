import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_app_bar.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/note_card_grid_view.dart';

class MainBodyContent extends StatelessWidget {
  const MainBodyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // custom note app Bar
        SafeArea(child: CustomNoteAppBar()),
        // space between note app Bar and note section
        SizedBox(
          height: 8,
        ),
        // notes section
        Expanded(child: NotesCardGridView()),
      ],
    );
  }
}

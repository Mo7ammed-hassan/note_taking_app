import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_app_bar.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/personal_note_card_grid_view.dart';

class NotesSection extends StatelessWidget {
  const NotesSection({
    super.key,
    required this.section,
  });

  final String section;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // custom note app Bar
        SafeArea(
          child: CustomNoteAppBar(
            title: section,
          ),
        ),
        // space between note app Bar and note section
        const SizedBox(
          height: 8,
        ),
        // notes section
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PersonalNotesCardGridView(
              section: section,
            ),
          ),
        ),
      ],
    );
  }
}

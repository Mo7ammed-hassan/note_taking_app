import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_card.dart';

class PersonalNotesCardGridView extends StatelessWidget {
  const PersonalNotesCardGridView({super.key});
  static List<NotesEntity> notes = [
    NotesEntity(title: 'mohamed', content: 'Mohamed Hassan Kamel'),
    NotesEntity(title: 'mohamed', content: 'Mohamed Hassan Kamel'),
    NotesEntity(title: 'mohamed', content: 'Mohamed Hassan Kamel'),
  ];
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      padding: EdgeInsets.zero,
      itemCount: notes.length,
      crossAxisSpacing: 3,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => CustomNoteCard(
        index: index,
        note: notes[index],
      ),
    );
  }
}

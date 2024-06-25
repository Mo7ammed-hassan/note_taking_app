import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_taking_app/core/services/note_services.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/add_new_note_card.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_card.dart';

class WorkNoteCardGridView extends StatelessWidget {
  const WorkNoteCardGridView({
    super.key,
  });
  static NoteService noteService = NoteService(boxName: workSection);
  @override
  Widget build(BuildContext context) {
    List<NotesEntity> notes = [];
    return MasonryGridView.builder(
      padding: EdgeInsets.zero,
      itemCount: notes.length,
      crossAxisSpacing: 3,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => index == 0
          ? const AddNewNoteCard()
          : CustomNoteCard(
              index: index,
              note: notes[index],
            ),
    );
  }
}

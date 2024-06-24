import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_taking_app/core/helper/helper_list.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_card.dart';

class PersonalNotesCardGridView extends StatelessWidget {
  const PersonalNotesCardGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      padding: EdgeInsets.zero,
      itemCount: notesList.length,
      crossAxisSpacing: 3,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => CustomNoteCard(
        title: notesList[index].title,
        content: notesList[index].content!,
      ),
    );
  }
}

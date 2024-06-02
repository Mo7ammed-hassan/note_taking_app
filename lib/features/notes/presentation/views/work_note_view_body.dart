import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_taking_app/core/helper/helper_list.dart';

import 'package:note_taking_app/features/notes/presentation/views/widgets/add_new_note.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_app_bar.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_card.dart';

class WorkNoteViewBody extends StatelessWidget {
  const WorkNoteViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // custom note app bar
        const SafeArea(child: CustomNoteAppBar()),
        const SizedBox(
          height: 8,
        ),
        // notes section
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: MasonryGridView.builder(
              padding: EdgeInsets.zero,
              itemCount: noteList.length,
              crossAxisSpacing: 3,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => index == 0
                  ? const AddNewNoteCard()
                  : CustomNoteCard(
                      title: 'Moahmed',
                      content: noteList[index].title,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

/**
 in future we should refactor code >>
 create builder widget to build which grid i will return..
  
 */
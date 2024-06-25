import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/constants/note_list.dart';
import 'package:note_taking_app/core/utils/constants/note_sections_list.dart';
import 'package:note_taking_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/note_card_item.dart';

class NoteCardGridView extends StatelessWidget {
  const NoteCardGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: noteList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 25,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // provide cubit to fetch notes
            BlocProvider.of<HomeCubit>(context)
                .fetchNotes(boxNote: noteSectionsList[index].boxName);
            // nav to selected notes
            GoRouter.of(context).push(noteSectionsList[index].route);
          },
          child: NoteCardItem(
            noteModel: noteList[index],
          ),
        );
      },
    );
  }
}

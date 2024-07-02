import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/constants/note_list.dart';
import 'package:note_taking_app/core/utils/constants/note_sections_list.dart';
import 'package:note_taking_app/core/utils/functions/delete_section_show_dialog.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/section_card_item.dart';
import 'package:note_taking_app/features/notes/presentation/manager/cubit/notes_cubit.dart';

class SectionsCardGridView extends StatelessWidget {
  const SectionsCardGridView({
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
            GoRouter.of(context).push(noteSectionsList[index].route);
            BlocProvider.of<NotesCubit>(context)
                .getAllNotes(boxName: noteList[index].title);
          },
          onLongPress: () async {
            await deleteSectionShowDialog(context, index: index);
          },
          child: SectionCardItem(sectionsModel: noteList[index]),
        );
      },
    );
  }
}

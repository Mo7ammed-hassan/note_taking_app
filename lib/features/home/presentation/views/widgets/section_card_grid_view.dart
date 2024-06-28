import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/constants/note_sections_list.dart';
import 'package:note_taking_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/section_card_item.dart';

class SectionsCardGridView extends StatelessWidget {
  const SectionsCardGridView({
    super.key,
    required this.sections,
  });
  final List<String> sections;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: sections.length,
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
            
            titlee: sections[index],
          ),
        );
      },
    );
  }
}

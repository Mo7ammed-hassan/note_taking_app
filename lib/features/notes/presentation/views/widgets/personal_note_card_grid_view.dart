import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_taking_app/core/models/note_card_item_model.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_card.dart';

class PersonalNotesCardGridView extends StatelessWidget {
  const PersonalNotesCardGridView({super.key});

  static List<NoteCardItemModel> noteList = const [
    NoteCardItemModel(
      title: 'Personal',
      image: Assets.imagesNote,
      size: 65,
      files: 30,
    ),
    NoteCardItemModel(
      title: 'Academic',
      image: Assets.imagesAcademic,
      size: 2.26,
      files: 102,
    ),
    NoteCardItemModel(
      title: 'Work',
      image: Assets.imagesWork,
      size: 1.57,
      files: 300,
    ),
    NoteCardItemModel(
      title:
          'Others OthersOthersOthers\nOthersOthersOthers\nOthersOthersOthersOthers',
      image: Assets.imagesOthers,
      size: 1.02,
      files: 201,
    ),
    NoteCardItemModel(
      title: 'Personal',
      image: Assets.imagesNote,
      size: 65,
      files: 30,
    ),
    NoteCardItemModel(
      title: 'Academic',
      image: Assets.imagesAcademic,
      size: 2.26,
      files: 102,
    ),
    NoteCardItemModel(
      title: 'Work',
      image: Assets.imagesWork,
      size: 1.57,
      files: 300,
    ),
    NoteCardItemModel(
      title:
          'Others OthersOthersOthers\nOthersOthersOthers\nOthersOthersOthersOthers',
      image: Assets.imagesOthers,
      size: 1.02,
      files: 201,
    ),
    NoteCardItemModel(
      title: 'Personal',
      image: Assets.imagesNote,
      size: 65,
      files: 30,
    ),
    NoteCardItemModel(
      title: 'Academic',
      image: Assets.imagesAcademic,
      size: 2.26,
      files: 102,
    ),
    NoteCardItemModel(
      title: 'Work',
      image: Assets.imagesWork,
      size: 1.57,
      files: 300,
    ),
    NoteCardItemModel(
      title:
          'Others OthersOthersOthers\nOthersOthersOthers\nOthersOthersOthersOthers',
      image: Assets.imagesOthers,
      size: 1.02,
      files: 201,
    ),
    NoteCardItemModel(
      title: 'Personal',
      image: Assets.imagesNote,
      size: 65,
      files: 30,
    ),
    NoteCardItemModel(
      title: 'Academic',
      image: Assets.imagesAcademic,
      size: 2.26,
      files: 102,
    ),
    NoteCardItemModel(
      title: 'Work',
      image: Assets.imagesWork,
      size: 1.57,
      files: 300,
    ),
    NoteCardItemModel(
      title:
          'Others OthersOthersOthers\nOthersOthersOthers\nOthersOthersOthersOthers',
      image: Assets.imagesOthers,
      size: 1.02,
      files: 201,
    ),
    NoteCardItemModel(
      title: 'Personal',
      image: Assets.imagesNote,
      size: 65,
      files: 30,
    ),
    NoteCardItemModel(
      title: 'Academic',
      image: Assets.imagesAcademic,
      size: 2.26,
      files: 102,
    ),
    NoteCardItemModel(
      title: 'Work',
      image: Assets.imagesWork,
      size: 1.57,
      files: 300,
    ),
    NoteCardItemModel(
      title:
          'Others OthersOthersOthers\nOthersOthersOthers\nOthersOthersOthersOthers',
      image: Assets.imagesOthers,
      size: 1.02,
      files: 201,
    ),
    NoteCardItemModel(
      title: 'Personal',
      image: Assets.imagesNote,
      size: 65,
      files: 30,
    ),
    NoteCardItemModel(
      title: 'Academic',
      image: Assets.imagesAcademic,
      size: 2.26,
      files: 102,
    ),
    NoteCardItemModel(
      title: 'Work',
      image: Assets.imagesWork,
      size: 1.57,
      files: 300,
    ),
    NoteCardItemModel(
      title:
          'Others OthersOthersOthers\nOthersOthersOthers\nOthersOthersOthersOthers',
      image: Assets.imagesOthers,
      size: 1.02,
      files: 201,
    ),
    NoteCardItemModel(
      title: 'Personal',
      image: Assets.imagesNote,
      size: 65,
      files: 30,
    ),
    NoteCardItemModel(
      title: 'Academic',
      image: Assets.imagesAcademic,
      size: 2.26,
      files: 102,
    ),
    NoteCardItemModel(
      title: 'Work',
      image: Assets.imagesWork,
      size: 1.57,
      files: 300,
    ),
    NoteCardItemModel(
      title:
          'Others OthersOthersOthers\nOthersOthersOthers\nOthersOthersOthersOthers',
      image: Assets.imagesOthers,
      size: 1.02,
      files: 201,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      padding: EdgeInsets.zero,
      itemCount: noteList.length,
      crossAxisSpacing: 3,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => CustomNoteCard(
        title: 'Moahmed',
        content: noteList[index].title,
      ),
    );
  }
}

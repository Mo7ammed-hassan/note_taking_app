import 'package:flutter/material.dart';
import 'package:note_taking_app/core/models/note_card_item_model.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

import 'package:note_taking_app/features/home/presentation/views/widgets/note_card_item.dart';

class NoteCardGridView extends StatelessWidget {
  const NoteCardGridView({
    super.key,
  });
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
      title: 'Others',
      image: Assets.imagesOthers,
      size: 1.02,
      files: 201,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: noteList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 27,
      ),
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: 171 / 172,
          child: NoteCardItem(
            noteModel: noteList[index],
          ),
        );
      },
    );
  }
}

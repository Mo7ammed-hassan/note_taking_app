import 'package:note_taking_app/core/models/note_card_model.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

List<NoteCardModel> noteList = [
  NoteCardModel(
    title: 'Personal',
    image: Assets.imagesNote,
    size: 65,
  ),
  NoteCardModel(
    title: 'Academic',
    image: Assets.imagesAcademic,
    size: 2.26,
  ),
  NoteCardModel(
    title: 'Work',
    image: Assets.imagesWork,
    size: 1.57,
  ),
  NoteCardModel(
    title: 'Others',
    image: Assets.imagesOthers,
    size: 1.02,
  ),
];

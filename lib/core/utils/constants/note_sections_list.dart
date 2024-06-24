import 'package:note_taking_app/core/models/note_sections_model.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';

const List<NoteSectionsModel> noteSectionsList = [
  NoteSectionsModel(
    boxName: personalSection,
    route: '/personalNotes',
  ),
  NoteSectionsModel(
    boxName: academicSection,
    route: '/notes',
  ),
  NoteSectionsModel(
    boxName: workSection,
    route: '/workNotes',
  ),
  NoteSectionsModel(
    boxName: otherSection,
    route: '/notes',
  ),
];

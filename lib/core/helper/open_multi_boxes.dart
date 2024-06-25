import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

List<Box<NotesEntity>> boxList = [];
Future<List<Box<NotesEntity>>> openNotesBoxes() async {
  var personalBox = await Hive.openBox<NotesEntity>(personalSection);
  var workBox = await Hive.openBox<NotesEntity>(workSection);
  var othersBox = await Hive.openBox<NotesEntity>(otherSection);
  var academicBox = await Hive.openBox<NotesEntity>(academicSection);
  boxList.add(personalBox);
  boxList.add(workBox);
  boxList.add(othersBox);
  boxList.add(academicBox);
  return boxList;
}

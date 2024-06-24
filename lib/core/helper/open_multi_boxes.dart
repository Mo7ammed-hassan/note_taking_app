import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';

List<Box<NoteModel>> boxList = [];
Future<List<Box<NoteModel>>> openNotesBoxes() async {
  var personalBox = await Hive.openBox<NoteModel>(personalSection);
  var workBox = await Hive.openBox<NoteModel>(workSection);
  var othersBox = await Hive.openBox<NoteModel>(otherSection);
  var academicBox = await Hive.openBox<NoteModel>(academicSection);
  boxList.add(personalBox);
  boxList.add(workBox);
  boxList.add(othersBox);
  boxList.add(academicBox);
  return boxList;
}

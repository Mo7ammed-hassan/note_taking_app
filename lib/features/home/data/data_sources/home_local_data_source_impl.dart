import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';
import 'package:note_taking_app/features/home/data/models/sections_model.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  Future<List<String>> addNewSection({required String boxName}) async {
    // Access section box
    Box<String> boxSections = Hive.box<String>(sectionsBox);

    //Open box for new section
    // Box<NoteModel> newSection = await Hive.openBox<NoteModel>(boxName);

    // test..
    Box<NoteModel> newSection = Hive.box<NoteModel>('test');

    // create List of new section
    List<SectionsModel> sectiosModel = [];
    if (newSection.isOpen) {
      // Add new section to sectionsBox
      await boxSections.add(boxName);
      sectiosModel.add(SectionsModel.fromJson(newSection));
      print('Success: Added new section $boxName');
    }
    // Return updated list of sections
    return boxSections.values.toList();
  }

  @override
  List<NoteModel> fetchNotes({required String boxNote}) {
    // Select which notes to fetch or box
    Box<NoteModel> boxNotes = Hive.box<NoteModel>(boxNote);

    return boxNotes.values.toList();
  }
}

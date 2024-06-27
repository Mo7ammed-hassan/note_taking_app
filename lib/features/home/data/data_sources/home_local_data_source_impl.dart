// ignore_for_file: avoid_print

import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  //--Add Sections--
  @override
  Future<List<String>> addNewSection({required String boxName}) async {
    // Access section box
    Box<String> boxSections = Hive.box<String>(sectionsBox);

    await boxSections.add(boxName);

    print('Success: Added new section $boxName');

    return boxSections.values.toList();
  }

  // --Fetch Sections--
  @override
  List<String> fetchSections() {
    Box<String> box = Hive.box<String>(sectionsBox);
    return box.values.toList();
  }

  // --Delete Sections--
  @override
  Future<void> deleteSection({required int index}) async {
    Box box = Hive.box<String>(sectionsBox);
    var section = box.getAt(index);
    if (section != null) {
      await box.deleteAt(index);
    }
  }

  // --Fetch Notes--
  @override
  List<NotesEntity> fetchNotes({required String boxNote}) {
    // Select which notes to fetch or box
    Box<NotesEntity> boxNotes = Hive.box<NotesEntity>(boxNote);

    return boxNotes.values.toList();
  }
}

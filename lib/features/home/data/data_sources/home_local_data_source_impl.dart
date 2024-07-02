// ignore_for_file: avoid_print

import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:note_taking_app/features/home/data/models/sections_model.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  //--Add Sections--
  @override
  Future<List<SectionsModel>> addNewSection(
      {required String boxName, required Uint8List image}) async {
    // Access section box
    Box<SectionsModel> boxSections = Hive.box<SectionsModel>(sectionsBox);

    await boxSections.add(
      SectionsModel(
        title: boxName,
        image: image,
        size: Hive.box(boxName).length,
      ),
    );

    print('Success: Added new section $boxName');

    return boxSections.values.toList();
  }

  // --Delete Sections--
  @override
  Future<void> deleteSection({required int index}) async {
    Box box = Hive.box<SectionsModel>(sectionsBox);
    var section = box.getAt(index);
    if (section != null) {
      await box.deleteAt(index);
    }
  }

  // --Fetch Sections--
  @override
  List<SectionsModel> fetchSections() {
    Box<SectionsModel> box = Hive.box<SectionsModel>(sectionsBox);
    return box.values.toList();
  }

  // --Fetch Notes--
  @override
  List<NotesEntity> fetchNotes({required String boxNote}) {
    // Select which notes to fetch or box
    Box<NotesEntity> boxNotes = Hive.box<NotesEntity>(boxNote);

    return boxNotes.values.toList();
  }
}

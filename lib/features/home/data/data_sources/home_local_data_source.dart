import 'dart:typed_data';

import 'package:note_taking_app/features/home/data/models/sections_model.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class HomeLocalDataSource {
  // --Add new section--
  Future<List<SectionsModel>> addNewSection(
      {required String boxName, required Uint8List image});

  // --Fetch notes--
  List<NotesEntity> fetchNotes({required String boxNote});

  // --Fetch sections
  List<SectionsModel> fetchSections();

  // --Delete section--
  Future<void> deleteSection({required int index});
}

import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class HomeLocalDataSource {
  // --Add new section--
  Future<List<String>> addNewSection({required String boxName});

  // --Fetch notes--
  List<NotesEntity> fetchNotes({required String boxNote});

  // --Fetch sections
  List<String> fetchSections();

  // --Delete section--
  Future<void> deleteSection({required int index});
}

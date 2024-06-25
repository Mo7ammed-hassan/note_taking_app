import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class NotesLocalDataSources {
  // --ADD NEW NOTE--
  Future<void> addNewNote({
    required String boxName,
    required String title,
    required String content,
  });
  // EDIT NOTE--
  Future<void> editNote({
    required String boxName,
    required int index,
    required String title,
    required String content,
  });
  // DELETE NOTE--
  Future<void> deleteNote({
    required int index,
    required String boxName,
  });

// --GET All NOTES--
  List<NotesEntity> getAllNotes({
    required String boxName,
  });
}

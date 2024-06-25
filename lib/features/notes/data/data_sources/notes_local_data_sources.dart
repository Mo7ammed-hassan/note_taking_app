
abstract class NotesLocalDataSources {
  // add
  Future<void> addNewNote({
    required String boxName,
    required String title,
    required String content,
  });
  // edit
  Future<void> editNote({
    required String boxName,
    required int index,
    required String title,
    required String content,
  });
  // delete
  Future<void> deleteNote({required int index, required String boxName});
}

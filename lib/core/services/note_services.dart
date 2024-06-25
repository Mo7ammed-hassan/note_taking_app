// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class NoteService {
  final String boxName;

  NoteService({required this.boxName});

  // --CREATE ADD NEW NOTE--
  Future<void> addNewNote({
    required String title,
    required String content,
  }) async {
    Box<NotesEntity> _box = Hive.box<NotesEntity>(boxName);
    await _box.add(NotesEntity(
      title: title,
      content: content,
    ));
  }

  // --CREATE EDIT NOTE--
  Future<void> editNote({
    required int index,
    required String title,
    required String content,
  }) async {
    Box<NotesEntity> _box = Hive.box<NotesEntity>(boxName);
    var note = _box.getAt(index);
    if (note != null) {
      NotesEntity editedNote = NotesEntity(title: title, content: content);
      await _box.putAt(
        index,
        editedNote,
      );
    }
  }

  // --CREATE DELETE NOTE--
  Future<void> deleteNote({required int index}) async {
    Box<NotesEntity> _box = Hive.box<NotesEntity>(boxName);
    var note = _box.getAt(index);
    if (note != null) {
      await _box.deleteAt(index);
    }
  }

  // --CREATE GET ALL NOTES--
  List<NotesEntity> getAllNotes({required String boxName}) {
    Box<NotesEntity> _box = Hive.box<NotesEntity>(boxName);
    return _box.values.toList();
  }
}

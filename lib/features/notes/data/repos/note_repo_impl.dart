
import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/services/note_services.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/notes/data/data_sources/notes_local_data_sources_imp.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';
import 'package:note_taking_app/features/notes/domain/repos/notes_repo.dart';

class NoteRepoImpl extends NotesRepo {
  final NotesLocalDataSourcesImp notesLocalDataSourcesImp;

  NoteRepoImpl({required this.notesLocalDataSourcesImp});

  // --ADD NEW NOTE--
  @override
  Future<Either<Failure, List<NotesEntity>>> addNewNote({
    required String title,
    required String content,
    required String boxName,
  }) async {
    try {
      await notesLocalDataSourcesImp.addNewNote(
        boxName: boxName,
        title: title,
        content: content,
      );
      // List<NotesEntity> notes = Hive.box<NotesEntity>(boxName).values.toList();
      // TODO: we are HERRRRRRRRRRRRRRRRRRRRRRR
      List<NotesEntity> notes =
          NoteService(boxName: boxName).getAllNotes(boxName: boxName);
      return Right(notes);
    } on Exception catch (e) {
      return Left(Failure(error: 'Failed add note: $e '));
    }
  }

  // --EDIT NOTE--
  @override
  Future<Either<Failure, List<NotesEntity>>> editNote({
    required String boxName,
    required int index,
    required String title,
    required String content,
  }) async {
    try {
      await notesLocalDataSourcesImp.editNote(
          boxName: boxName, index: index, title: title, content: content);

      List<NotesEntity> notes = Hive.box<NotesEntity>(boxName).values.toList();
      return Right(notes);
    } on Exception catch (e) {
      return Left(Failure(error: 'Failed to edit: $e'));
    }
  }

  // --DELETE NOTE--
  @override
  Future<Either<Failure, List<NotesEntity>>> deleteNote(
      {required int index, required String boxName}) async {
    try {
      await notesLocalDataSourcesImp.deleteNote(index: index, boxName: boxName);
      List<NotesEntity> notes = Hive.box<NotesEntity>(boxName).values.toList();
      return Right(notes);
    } on Exception catch (e) {
      return Left(Failure(error: 'Failed to delete: $e'));
    }
  }
}

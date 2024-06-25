import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class NotesUseCases {
  // --CALL ADD NEW NOTES
  Future<Either<Failure, List<NotesEntity>>> callAddNewNote({
    required String title,
    required String content,
    required String boxName,
  });
  // --CALL EDIT NOTE
  Future<Either<Failure, List<NotesEntity>>> callEditNote({
    required int index,
    required String title,
    required String content,
    required String boxName,
  });
  // --CALL DELETE NOTE
  Future<Either<Failure, List<NotesEntity>>> callDeleteNote({
    required int index,
    required String boxName,
  });

  // --CALL GET NOTES
  Future<Either<Failure, List<NotesEntity>>> callGetNotes(
      {required String boxName});
}

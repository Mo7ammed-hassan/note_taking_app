import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class NotesRepo {
  // --ADD NEW NOTE--
  Future<Either<Failure, List<NotesEntity>>> addNewNote({
    required String title,
    required String content,
    required String boxName,
  });
  // EDIT NOTE--
  Future<Either<Failure, List<NotesEntity>>> editNote({
    required String boxName,
    required int index,
    required String title,
    required String content,
  });
  // DELETE NOTE--
  Future<Either<Failure, List<NotesEntity>>> deleteNote({
    required int index,
    required String boxName,
  });

  Either<Failure, List<NotesEntity>> getNotes({required String boxName});
}

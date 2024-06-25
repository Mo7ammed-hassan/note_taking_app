import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class HomeUseCases {
  Either<Failure, List<NotesEntity>> callFetchNotes({required String boxNote});
  Future<Either<Failure, List<String>>> callAddNewSection(
      {required String boxName});
}

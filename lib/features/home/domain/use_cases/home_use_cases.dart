import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';

abstract class HomeUseCases {
  Either<Failure, List<NoteModel>> callFetchNotes({required String boxNote});
  Future<Either<Failure, List<String>>> callAddNewSection(
      {required String boxName});
}

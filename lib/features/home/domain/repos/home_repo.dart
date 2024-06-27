import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class HomeRepo {
  //fetch notes
  Either<Failure, List<NotesEntity>> fetchNotes({required String boxNote});

  // add new section
  Future<Either<Failure, List<String>>> addNewSection(
      {required String title});
}

class Failure {
  final String error;

  Failure({required this.error});
}

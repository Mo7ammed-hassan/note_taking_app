import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';

abstract class HomeRepo {
  //fetch notes
  Either<Failure, List<NoteModel>> fetchNotes({required String boxNote});

  // add new section
  Future<Either<Failure, List<String>>> addNewSection(
      {required String boxName});
}

class Failure {
  final String error;

  Failure({required this.error});
}

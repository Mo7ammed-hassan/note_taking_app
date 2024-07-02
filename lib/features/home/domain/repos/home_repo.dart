import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/data/models/sections_model.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class HomeRepo {
  // --fetch notes--
  Either<Failure, List<SectionsModel>> fetchSections();

  //--fetch notes--
  Either<Failure, List<NotesEntity>> fetchNotes({required String boxNote});

  // --add new section--
  Future<Either<Failure, List<SectionsModel>>> addNewSection(
      {required String boxName, required Uint8List image});

  // --delete Section--
  Future<Either<Failure, List<SectionsModel>>> deleteSection(
      {required int index});
}

class Failure {
  final String error;

  Failure({required this.error});
}

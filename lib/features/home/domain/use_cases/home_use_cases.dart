import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/data/models/sections_model.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class HomeUseCases {
  // --Add New Section--
  Future<Either<Failure, List<SectionsModel>>> callAddNewSection(
      {required String boxName, required Uint8List image});

  // --Delete Section--
  Future<Either<Failure, List<SectionsModel>>> callDeleteSection(
      {required int index});

  //--Fetch Sections--
  Either<Failure, List<SectionsModel>> callFetchSections();

  // --Fetch Notes--
  Either<Failure, List<NotesEntity>> callFetchNotes({required String boxNote});
}

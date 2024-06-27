import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class HomeUseCases {
  // --Add New Section--
  Future<Either<Failure, List<String>>> callAddNewSection(
      {required String title});

  // --Delete Section--
  Future<Either<Failure, List<String>>> callDeleteSection({required int index});

  //--Fetch Sections--
  Either<Failure, List<String>> callFetchSections();

  // --Fetch Notes--
  Either<Failure, List<NotesEntity>> callFetchNotes({required String boxNote});
}

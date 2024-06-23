import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failure, List<String>>> addNewSection(
      {required String boxName}) async {
    // Ensure the box name is valid
    if (boxName.isEmpty) {
      return Left(Failure(error: 'Box name cannot be empty'));
    }

    // Call section box
    Box<String> boxSections = Hive.box<String>(sectionsBox);

    try {
      // Open new box
      Box<NoteModel> newSection = await Hive.openBox<NoteModel>(boxName);
      if (newSection.isOpen) {
        // Add and store a new section in sectionsBox
        await boxSections.add(boxName);
        //print('Success: Added new section $boxName');
      }
      return Right(boxSections.values.toList());
    } catch (e) {
      // Use a specific error message
      return Left(Failure(error: 'Failed to add new section: ${e.toString()}'));
    }
  }

  @override
  Either<Failure, List<NoteModel>> fetchNotes({required String boxNote}) {
    try {
      // Ensure the box name is valid
      if (boxNote.isEmpty) {
        return Left(Failure(error: 'Box name cannot be empty'));
      }

      // Select which notes to fetch or box
      Box<NoteModel> boxNotes = Hive.box<NoteModel>(boxNote);

      return Right(boxNotes.values.toList());
    } catch (e) {
      //print('Error: ${e.toString()}');
      return Left(
        Failure(error: 'There was an error fetching notes: ${e.toString()}'),
      );
    }
  }
}

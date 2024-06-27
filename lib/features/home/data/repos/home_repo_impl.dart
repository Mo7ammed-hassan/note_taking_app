import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({required this.homeLocalDataSource});

  //--Add New Sections --
  @override
  Future<Either<Failure, List<String>>> addNewSection(
      {required String title}) async {
    try {
      if (title.isEmpty) {
        return Left(Failure(error: 'Box name cannot be empty'));
      }

      List<String> boxSections =
          await homeLocalDataSource.addNewSection(boxName: title);

      return Right(boxSections);
    } catch (e) {
      return Left(
        Failure(error: 'Failed to add new section: ${e.toString()}'),
      );
    }
  }

// --Delete Sections--
  @override
  Future<Either<Failure, List<String>>> deleteSection(
      {required int index}) async {
    try {
      await homeLocalDataSource.deleteSection(index: index);
      List<String> sections = Hive.box<String>(sectionsBox).values.toList();
      return Right(sections);
    } on Exception catch (e) {
      return Left(Failure(error: 'Failed to delete: $e'));
    }
  }

// --Fetch Sections--
  @override
  Either<Failure, List<String>> fetchSections() {
    try {
      homeLocalDataSource.fetchSections();
      List<String> sections = Hive.box<String>(sectionsBox).values.toList();
      return Right(sections);
    } on Exception catch (e) {
      return Left(Failure(error: 'Failed to fetch: $e'));
    }
  }

  // --Fetch Notes--
  @override
  Either<Failure, List<NotesEntity>> fetchNotes({required String boxNote}) {
    try {
      if (boxNote.isEmpty) {
        return Left(Failure(error: 'Box name cannot be empty'));
      }

      List<NotesEntity> notes =
          homeLocalDataSource.fetchNotes(boxNote: boxNote);
      return Right(notes);
    } catch (e) {
      return Left(
        Failure(error: 'There was an error fetching notes: ${e.toString()}'),
      );
    }
  }
}

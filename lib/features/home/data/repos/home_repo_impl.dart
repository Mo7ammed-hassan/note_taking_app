import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<String>>> addNewSection(
      {required String boxName}) async {
    try {
      if (boxName.isEmpty) {
        return Left(Failure(error: 'Box name cannot be empty'));
      }

      List<String> boxSections =
          await homeLocalDataSource.addNewSection(boxName: boxName);

      return Right(boxSections);
    } catch (e) {
      return Left(
        Failure(error: 'Failed to add new section: ${e.toString()}'),
      );
    }
  }

  @override
  Either<Failure, List<NoteModel>> fetchNotes({required String boxNote}) {
    try {
      if (boxNote.isEmpty) {
        return Left(Failure(error: 'Box name cannot be empty'));
      }

      List<NoteModel> notes = homeLocalDataSource.fetchNotes(boxNote: boxNote);
      return Right(notes);
    } catch (e) {
      return Left(
        Failure(error: 'There was an error fetching notes: ${e.toString()}'),
      );
    }
  }
}

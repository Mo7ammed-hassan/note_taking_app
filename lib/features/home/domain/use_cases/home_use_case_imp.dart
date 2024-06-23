import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/home/domain/use_cases/home_use_cases.dart';

class HomeUseCaseImpl extends HomeUseCases {
  final HomeRepo homeRepo;

  HomeUseCaseImpl(this.homeRepo);

  @override
  Either<Failure, List<NoteModel>> callFetchNotes({required String boxNote}) {
    return homeRepo.fetchNotes(boxNote: boxNote);
  }

  @override
  Future<Either<Failure, List<String>>> callAddNewSection(
      {required String boxName}) async {
    return await homeRepo.addNewSection(boxName: boxName);
  }
}

import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/home/domain/use_cases/home_use_cases.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class HomeUseCaseImpl extends HomeUseCases {
  final HomeRepo homeRepo;

  HomeUseCaseImpl(this.homeRepo);

  @override
  Either<Failure, List<NotesEntity>> callFetchNotes({required String boxNote}) {
    return homeRepo.fetchNotes(boxNote: boxNote);
  }

  @override
  Future<Either<Failure, List<String>>> callAddNewSection(
      {required String title}) async {
    return await homeRepo.addNewSection(title: title);
  }
}

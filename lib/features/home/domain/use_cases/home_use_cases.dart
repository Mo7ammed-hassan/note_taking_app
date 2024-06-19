import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';

abstract class HomeUseCases {
  Future<void> callNotes({required String boxNotes});
}

class HomeUseCasesImpl extends HomeUseCases {
  final HomeRepo homeRepo;

  HomeUseCasesImpl({required this.homeRepo});
  @override
  Future<void> callNotes({required String boxNotes}) {
    return homeRepo.fetchNotes(boxNote: boxNotes);
  }
}

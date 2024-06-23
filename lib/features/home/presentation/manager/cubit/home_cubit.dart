import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_taking_app/features/home/data/models/note_model.dart';
import 'package:note_taking_app/features/home/domain/use_cases/home_use_case_imp.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeUseCaseImpl) : super(HomeInitial());

  final HomeUseCaseImpl homeUseCaseImpl;
  List<String> sectionsList = [];
  List<NoteModel> notesList = [];

  // --ADD NEW SECTION--
  Future<void> addNewSection({required String boxName}) async {
    emit(HomeLoading());
    // trigger add new section method
    var sections = await homeUseCaseImpl.callAddNewSection(boxName: boxName);
    sections.fold(
      (failure) {
        emit(HomeFailure(error: failure.error));
      },
      (sections) {
        sectionsList = sections;
        emit(AddNewSectionSuccess(sections: sections));
      },
    );
  }

  // --FETCH NOTES--
  void fetchNotes({required String boxNote}) {
    emit(HomeLoading());
    // trigger fetch notes method
    var notes = homeUseCaseImpl.callFetchNotes(boxNote: boxNote);
    notes.fold(
      (failure) {
        emit(HomeFailure(error: failure.error));
      },
      (notes) {
        notesList = notes;
        emit(FetchNotesSuccess(notes: notes));
      },
    );
  }
}

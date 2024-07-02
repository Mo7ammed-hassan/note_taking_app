import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taking_app/features/home/data/models/sections_model.dart';
import 'package:note_taking_app/features/home/domain/use_cases/home_use_case_imp.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeUseCaseImpl) : super(HomeInitial());

  final HomeUseCaseImpl homeUseCaseImpl;
  List<SectionsModel> sectionsList = [];
  List<NotesEntity> notesList = [];

  // --ADD NEW SECTION--
  Future<void> addNewSection(
      {required String boxName, required Uint8List image}) async {
    emit(HomeLoading());
    // trigger add new section method
    var sections =
        await homeUseCaseImpl.callAddNewSection(image: image, boxName: boxName);
    sections.fold(
      (failure) {
        emit(HomeFailure(error: failure.error));
      },
      (sections) {
        sectionsList = sections;
        emit(AddNewSectionSuccess(sections: sectionsList));
      },
    );
  }

  //--DELETE SECTIONS--
  Future<void> deleteSection({required int index}) async {
    emit(HomeLoading());
    // trigger delete section method
    var sections = await homeUseCaseImpl.callDeleteSection(index: index);
    sections.fold(
      (failure) {
        emit(HomeFailure(error: failure.error));
      },
      (sections) {
        sectionsList = sections;
        emit(DeleteSectionSuccess(sections: sectionsList));
      },
    );
  }

  // --FETCH SECTIONS--
  void fetchSections() {
    // trigger fetch sections method
    var sections = homeUseCaseImpl.callFetchSections();
    sections.fold(
      (failure) {
        emit(HomeFailure(error: failure.error));
      },
      (sections) {
        sectionsList = sections;
        emit(FetchSectionsSuccess(sections: sectionsList));
      },
    );
  }

  // --FETCH NOTES--
  void fetchNotes({required String boxNote}) {
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

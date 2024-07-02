import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';
import 'package:note_taking_app/features/notes/domain/use_cases/notes_use_cases_impl.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  final NotesUseCasesImpl notesUseCasesImpl;
  NotesCubit(this.notesUseCasesImpl) : super(NotesInitial());
  List<NotesEntity> notes = [];
  // --ADD NEW NOTE--
  Future<void> addNewNote({
    required String title,
    required String content,
    required String boxName,
  }) async {
    emit(NotesLoading());
    var result = await notesUseCasesImpl.callAddNewNote(
      title: title,
      content: content,
      boxName: boxName,
    );
    result.fold((failure) {
      emit(AddNoteFailure(error: 'Error added: $failure'));
    }, (notes) {
      emit(AddNoteSuccess(notes: notes));
    });
  }

  // --EDIT NOTE--
  Future<void> editNote({
    required String title,
    required String content,
    required String boxName,
    required int index,
  }) async {
    emit(NotesLoading());

    var result = await notesUseCasesImpl.callEditNote(
        index: index, title: title, content: content, boxName: boxName);

    result.fold((failure) {
      emit(EditNoteFailure(error: 'Error edited: $failure'));
    }, (notes) {
      emit(EditNoteSuccess(notes: notes));
    });
  }

  // --DELETE NOTE--
  Future<void> deleteNote({required String boxName, required int index}) async {
    emit(NotesLoading());
    var result =
        await notesUseCasesImpl.callDeleteNote(index: index, boxName: boxName);

    result.fold((failure) {
      emit(DeleteNoteFailure(error: 'Error deleted: $failure'));
    }, (notes) {
      emit(DeleteNoteSuccess(notes: notes));
    });
  }

  // GET ALL NOTES--
  void getAllNotes({required String boxName}) {
    var result = notesUseCasesImpl.callGetNotes(boxName: boxName);
    result.fold((failure) {
      emit(GetAllNotesFailure(error: 'Error getting all notes: $failure'));
    }, (notesList) {
      notes = notesList;
      emit(GetAllNotesSuccess(notes: notes));
    });
  }
}

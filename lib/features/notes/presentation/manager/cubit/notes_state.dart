part of 'notes_cubit.dart';

sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class AddNoteSuccess extends NotesState {
  final List<NotesEntity> notes;

  AddNoteSuccess({required this.notes});
}

final class AddNoteFailure extends NotesState {
  final String error;

  AddNoteFailure({required this.error});
}

final class DeleteNoteSuccess extends NotesState {
  List<NotesEntity> notes = [];

  DeleteNoteSuccess({required this.notes});
}

final class DeleteNoteFailure extends NotesState {
  final String error;

  DeleteNoteFailure({required this.error});
}

final class EditNoteSuccess extends NotesState {
  List<NotesEntity> notes = [];

  EditNoteSuccess({required this.notes});
}

final class EditNoteFailure extends NotesState {
  final String error;

  EditNoteFailure({required this.error});
}

final class GetAllNotesSuccess extends NotesState {
  List<NotesEntity> notes = [];

  GetAllNotesSuccess({required this.notes});
}

final class GetAllNotesFailure extends NotesState {
  final String error;

  GetAllNotesFailure({required this.error});
}

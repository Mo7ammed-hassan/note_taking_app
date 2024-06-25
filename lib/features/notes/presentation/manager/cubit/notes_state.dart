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
  final List<NotesEntity> notes;

  DeleteNoteSuccess({required this.notes});
}

final class DeleteNoteFailure extends NotesState {
  final String error;

  DeleteNoteFailure({required this.error});
}

final class EditNoteSuccess extends NotesState {
  final List<NotesEntity> notes;

  EditNoteSuccess({required this.notes});
}

final class EditNoteFailure extends NotesState {
  final String error;

  EditNoteFailure({required this.error});
}

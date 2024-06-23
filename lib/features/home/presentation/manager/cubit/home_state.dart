part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeLoading extends HomeState {}

final class AddNewSectionSuccess extends HomeState {
  final List<String> sections;

  AddNewSectionSuccess({required this.sections});
}

final class FetchNotesSuccess extends HomeState {
  final List<NoteModel> notes;

  FetchNotesSuccess({required this.notes});
}

final class HomeFailure extends HomeState {
  final String error;

  HomeFailure({required this.error});
}

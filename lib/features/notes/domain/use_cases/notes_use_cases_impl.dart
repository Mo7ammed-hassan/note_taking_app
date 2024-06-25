import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';
import 'package:note_taking_app/features/notes/domain/repos/notes_repo.dart';
import 'package:note_taking_app/features/notes/domain/use_cases/notes_use_cases.dart';

class NotesUseCasesImpl extends NotesUseCases {
  final NotesRepo notesRepo;

  NotesUseCasesImpl({required this.notesRepo});

  @override
  Future<Either<Failure, List<NotesEntity>>> callAddNewNote({
    required String title,
    required String content,
    required String boxName,
  }) async {
    return await notesRepo.addNewNote(
      title: title,
      content: content,
      boxName: boxName,
    );
  }

  @override
  Future<Either<Failure, List<NotesEntity>>> callDeleteNote(
      {required int index, required String boxName}) async {
    return await notesRepo.deleteNote(
      boxName: boxName,
      index: index,
    );
  }

  @override
  Future<Either<Failure, List<NotesEntity>>> callEditNote({
    required int index,
    required String title,
    required String content,
    required String boxName,
  }) async {
    return await notesRepo.editNote(
      index: index,
      title: title,
      content: content,
      boxName: boxName,
    );
  }

  @override
  Either<Failure, List<NotesEntity>> callGetNotes({required String boxName}) {
    return notesRepo.getNotes(boxName: boxName);
  }
}

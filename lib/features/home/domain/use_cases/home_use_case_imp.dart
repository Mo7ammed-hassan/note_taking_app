import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:note_taking_app/features/home/data/models/sections_model.dart';
import 'package:note_taking_app/features/home/domain/repos/home_repo.dart';
import 'package:note_taking_app/features/home/domain/use_cases/home_use_cases.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class HomeUseCaseImpl extends HomeUseCases {
  final HomeRepo homeRepo;

  HomeUseCaseImpl(this.homeRepo);

  // --Call Add New Section--
  @override
  Future<Either<Failure, List<SectionsModel>>> callAddNewSection(
      {required String boxName, required Uint8List image}) async {
    return await homeRepo.addNewSection(boxName: boxName, image: image);
  }

  // --Call Delete Section--
  @override
  Future<Either<Failure, List<SectionsModel>>> callDeleteSection(
      {required int index}) {
    return homeRepo.deleteSection(index: index);
  }

  // --Call Fetch Sections--
  @override
  Either<Failure, List<SectionsModel>> callFetchSections() {
    return homeRepo.fetchSections();
  }

  // --Call Fetch Notes--
  @override
  Either<Failure, List<NotesEntity>> callFetchNotes({required String boxNote}) {
    return homeRepo.fetchNotes(boxNote: boxNote);
  }
}

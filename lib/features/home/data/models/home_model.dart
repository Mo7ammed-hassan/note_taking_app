import 'package:note_taking_app/features/home/domain/entites/user_entites.dart';

class HomeModel extends HomeEntity {
  final String? name;
  final double avSpace;
  final int persFiles;
  final int perslSize;
  final int acadFiles;
  final int acadSize;
  final int workFile;
  final int workSiz;
  final int otherFile;
  final int otherSizes;

  HomeModel({
    required this.name,
    required this.avSpace,
    required this.persFiles,
    required this.perslSize,
    required this.acadFiles,
    required this.acadSize,
    required this.workFile,
    required this.workSiz,
    required this.otherFile,
    required this.otherSizes,
  }) : super(
          userName: name ?? 'No name',
          availableSpace: avSpace,
          personalFiles: persFiles,
          personalSize: perslSize,
          academicFiles: acadFiles,
          academicSize: acadSize,
          workFiles: workFile,
          workSize: workSiz,
          otherFiles: otherFile,
          otherSize: otherSizes,
        );
}
  









/// create ist of entity and storage data in it..
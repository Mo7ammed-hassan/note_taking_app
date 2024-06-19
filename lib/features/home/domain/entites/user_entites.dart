// create data representation
// we should cashed it
class HomeEntity {
  final String userName;
  final double availableSpace;
  final int personalFiles;
  final int personalSize;
  final int academicFiles;
  final int academicSize;
  final int workFiles;
  final int workSize;
  final int otherFiles;
  final int otherSize;

  HomeEntity({
    required this.userName,
    required this.availableSpace,
    required this.personalFiles,
    required this.personalSize,
    required this.academicFiles,
    required this.academicSize,
    required this.workFiles,
    required this.workSize,
    required this.otherFiles,
    required this.otherSize,
  });
}

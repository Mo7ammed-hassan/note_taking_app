
class SectionsModel {
  final String title;
  final int files;
  final int size;

  SectionsModel({required this.title, required this.files, required this.size});

  factory SectionsModel.fromJson(var box, String title) {
    return SectionsModel(title: title, files: box.length, size: box.length);
  }
}

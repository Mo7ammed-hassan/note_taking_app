import 'package:hive_flutter/hive_flutter.dart';

class SectionsModel {
  final String title;
  final int files;
  final int size;

  SectionsModel({required this.title, required this.files, required this.size});

  factory SectionsModel.fromJson(Box box) {
    return SectionsModel(title: box.name, files: box.length, size: box.length);
  }
}

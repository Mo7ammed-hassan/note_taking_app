import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';

part 'sections_model.g.dart';

@HiveType(typeId: 2)
class SectionsModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final Uint8List image;
  @HiveField(2)
  final int size;

  SectionsModel({required this.title, required this.image, required this.size});
}

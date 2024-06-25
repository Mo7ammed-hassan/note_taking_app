import 'package:hive_flutter/hive_flutter.dart';

part 'notes_entity.g.dart';

@HiveType(typeId: 1)
class NotesEntity extends HiveObject {
  @HiveField(0)
   String title;
  @HiveField(1)
   String content;

  NotesEntity({required this.title, required this.content});
}

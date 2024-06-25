import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

abstract class HomeLocalDataSource {
 Future< List<String> >addNewSection({required String boxName});
  List<NotesEntity> fetchNotes({required String boxNote});
}

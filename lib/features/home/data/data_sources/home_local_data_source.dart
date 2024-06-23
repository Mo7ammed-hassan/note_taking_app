import 'package:note_taking_app/features/home/data/models/note_model.dart';

abstract class HomeLocalDataSource {
 Future< List<String> >addNewSection({required String boxName});
  List<NoteModel> fetchNotes({required String boxNote});
}

class NotesModel {
  final String title;
  final String content;

  NotesModel({required this.title, required this.content});

  factory NotesModel.fromJson(var note) {
    return NotesModel(
      title: note.title,
      content: note.content,
    );
  }
}

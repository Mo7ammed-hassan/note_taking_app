class NoteCardItemModel {
  final String title, image;
  final String? content;
  final double size;
  final int files;

  const NoteCardItemModel({
    required this.title,
    this.content,
    required this.image,
    required this.size,
    required this.files,
  });
}

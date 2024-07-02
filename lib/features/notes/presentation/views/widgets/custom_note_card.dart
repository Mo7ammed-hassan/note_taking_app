import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class CustomNoteCard extends StatelessWidget {
  final NotesEntity note;
  const CustomNoteCard({
    super.key,
    required this.note, this.onLongPress, this.onTap,
  });
  final Function()? onLongPress;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                note.content,
                maxLines: 11,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.boxName, required this.index});
  final String boxName;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 4),
          child: EditNoteViewBody(
            boxName: boxName,
            index: index,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/add_note_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 4),
          child: AddNoteViewBody(),
        ),
      ),
    );
  }
}

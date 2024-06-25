import 'package:flutter/material.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/personal_note_view_body.dart';

class PersonalNoteView extends StatelessWidget {
  const PersonalNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PersonalNoteViewBody(),
    );
  }
}

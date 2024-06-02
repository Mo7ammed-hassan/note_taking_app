import 'package:flutter/material.dart';


import 'package:note_taking_app/features/notes/presentation/views/widgets/personal_note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteViewBody(),
      
    );
  }
}

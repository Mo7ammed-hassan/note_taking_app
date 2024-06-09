import 'package:flutter/material.dart';

import 'package:note_taking_app/features/notes/presentation/views/widgets/work_note_view_body.dart';

class WorkNoteView extends StatelessWidget {
  const WorkNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WorkNoteViewBody(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:note_taking_app/features/notes/presentation/views/widgets/add_note_view_body.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/build_add_note_app_bar.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAddNoteAppBar(context),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: AddNotePageBody(),
      ),
    );
  }
}

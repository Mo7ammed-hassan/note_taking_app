import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/constants/boxes.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/custom_note_app_bar.dart';
import 'package:note_taking_app/features/notes/presentation/views/widgets/work_note_card_grid_view.dart';

class AcademicNotesView extends StatelessWidget {
  const AcademicNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // custom note app bar
            CustomNoteAppBar(
              title: academicSection,
            ),
            SizedBox(
              height: 8,
            ),
            // notes section
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: WorkNoteCardGridView(
                  section: academicSection,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

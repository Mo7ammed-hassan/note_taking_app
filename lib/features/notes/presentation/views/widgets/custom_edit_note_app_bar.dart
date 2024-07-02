import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';
import 'package:note_taking_app/features/notes/presentation/manager/cubit/notes_cubit.dart';

class CustomEditNoteAppBar extends StatelessWidget {
  const CustomEditNoteAppBar({
    super.key,
    required this.title,
    required this.titleController,
    required this.noteController,
    required this.boxName,
    required this.index,
  });
  final String title, boxName;
  final TextEditingController titleController;
  final TextEditingController noteController;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // laeding
            // arrow - back
            GestureDetector(
              onTap: () {
                if (titleController.text.isNotEmpty ||
                    noteController.text.isNotEmpty) {
                  BlocProvider.of<NotesCubit>(context)
                      .editNote(
                        title: titleController.text,
                        content: noteController.text,
                        boxName: boxName,
                        index: index,
                      )
                      .then((value) => GoRouter.of(context).pop());
                } else {
                  GoRouter.of(context).pop();
                }
              },
              child: SvgPicture.asset(
                Assets.imagesArrowBack,
                width: 11,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: AppTextStyles.textStyle19ExtraBold,
            ),
          ],
        ),

        // action
        Row(
          children: [
            // search icon
            IconButton(
              icon: const Icon(
                Icons.save_alt,
              ),
              onPressed: () {
                if (titleController.text.isNotEmpty ||
                    noteController.text.isNotEmpty) {
                  BlocProvider.of<NotesCubit>(context)
                      .editNote(
                        title: titleController.text,
                        content: noteController.text,
                        boxName: boxName,
                        index: index,
                      )
                      .then((value) => GoRouter.of(context).pop());
                } else {
                  GoRouter.of(context).pop();
                }
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.notifications,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        )
      ],
    );
  }
}

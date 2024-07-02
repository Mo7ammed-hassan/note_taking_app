import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/features/notes/presentation/manager/cubit/notes_cubit.dart';

Future<dynamic> deleteNoteShowDialog({
  required int index,
  required BuildContext context,
  required String boxName,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(
          'Delete Note',
          style: AppTextStyles.textStyle14SemiBold,
        ),
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<NotesCubit>(context)
                  .deleteNote(boxName: boxName, index: index)
                  .then((value) {
                GoRouter.of(context).pop();
              });
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.redAccent,
            ),
          ),
        ],
      );
    },
  );
}

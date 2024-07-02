import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/functions/build_show_snak_bar.dart';

Future<dynamic> deleteSectionShowDialog(BuildContext context,
    {required int index}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Delete Section'),
            IconButton(
              onPressed: () {
                // BlocProvider.of<HomeCubit>(context)
                //     .deleteSection(index: index)
                //    .then((value) => Navigator.pop(context));
                // Navigator.pop(context);
                showSnakBar(context, title: 'In Future');
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.home),
          ),
        ],
      );
    },
  );
}

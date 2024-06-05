import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';

PreferredSizeWidget customAddNoteAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leadingWidth: Checkbox.width,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {},
      ),
      title: Text(
        "Add Note",
        style: AppTextStyles.textStyle18SemiBold.copyWith(
          color: const Color.fromARGB(255, 28, 36, 53),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.save_alt,
          ),
          onPressed: () {
            // Save action
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
    );
  }
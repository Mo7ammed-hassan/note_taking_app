import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: true,
      leading: IconButton(
          style: ButtonStyle(
            iconSize: const MaterialStatePropertyAll(17),
            iconColor: MaterialStatePropertyAll(
              AppColors.noteBodyColor,
            ),
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new)),
      title: Text(
        'Log in',
        style: AppTextStyles.textStyle18SemiBold,
      ),
    );
  }
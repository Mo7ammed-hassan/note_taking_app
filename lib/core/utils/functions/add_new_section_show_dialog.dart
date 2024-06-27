import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';

Future<dynamic> addNewSectionShowDialog(BuildContext context) {
    return showDialog(
          context: context,
          builder: (context) {
            return Container(
              padding: const EdgeInsets.all(15),
              child: AlertDialog(
                content: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Section Name',
                    labelStyle: AppTextStyles.textStyle16ExtraBold,
                  ),
                  style: AppTextStyles.textStyle16SemiBold,
                ),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'create',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
            );
          },
        );
  }
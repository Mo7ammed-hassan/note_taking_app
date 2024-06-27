import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/features/home/presentation/manager/cubit/home_cubit.dart';

Future<dynamic> addNewSectionShowDialog(
  BuildContext context,
  HomeCubit homeCubit,
) {
  TextEditingController controller = TextEditingController();
  GlobalKey<FormState> fromKey = GlobalKey();
  return showDialog(
    context: context,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(15),
        child: AlertDialog(
          content: Form(
            key: fromKey,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter section name';
                } else {
                  return null;
                }
              },
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Section Name',
                labelStyle: AppTextStyles.textStyle16ExtraBold,
              ),
              style: AppTextStyles.textStyle16SemiBold,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (fromKey.currentState!.validate()) {
                  homeCubit.addNewSection(title: controller.text);
                  Navigator.of(context).pop();
                }
              },
              child: Text(
                'Create',
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      );
    },
  );
}

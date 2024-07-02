import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';

Future<dynamic> futureAlert(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'In Future',
              style: AppTextStyles.textStyle17SemiBold
                  .copyWith(color: AppColors.cardBodyColor),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: const Icon(Icons.home),
            )
          ],
        ),
      );
    },
  );
}

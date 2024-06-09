import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

class CustomAddNoteAppBar extends StatelessWidget {
  const CustomAddNoteAppBar({super.key, required this.title});
  final String title;
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
                Navigator.pop(context);
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

            // search title
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

class CustomNoteAppBar extends StatelessWidget {
  const CustomNoteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Row(
              children: [
                // laeding
                // arrow - back
                SvgPicture.asset(Assets.imagesArrowBack),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Back',
                  style: AppTextStyles.textStyle17Reqular,
                ),
              ],
            ),
          ),

          // Title
          Text(
            'Personal',
            style: AppTextStyles.textStyle17SemiBold,
          ),

          // action
          Row(
            children: [
              // search icon
              SvgPicture.asset(
                Assets.imagesSearch,
              ),
              const SizedBox(
                width: 8,
              ),
              // search title
              Text(
                'Search',
                style: AppTextStyles.textStyle17Reqular,
              ),
            ],
          )
        ],
      ),
    );
  }
}

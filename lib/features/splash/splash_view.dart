import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 157),
            // splash image--
            SvgPicture.asset('assets/images/Black.svg'),
            const SizedBox(height: 15),

            // splash text--
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Note-Taking ',
                    style: AppTextStyles.textStyle22Black
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  TextSpan(
                    text: 'App',
                    style: AppTextStyles.textStyle22Black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

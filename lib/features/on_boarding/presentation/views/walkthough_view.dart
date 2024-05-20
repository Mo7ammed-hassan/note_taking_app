import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';
import 'package:note_taking_app/core/utils/widgets/custom_buttom.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/widgets/page_view_and_smoth_indicator.dart';

class WalkthoughView extends StatelessWidget {
  const WalkthoughView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Column(
        children: [
          const SizedBox(height: 100),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Note-Taking ',
                  style: AppTextStyles.textStyle24Black
                      .copyWith(color: AppColors.primaryColor),
                ),
                TextSpan(
                  text: 'App',
                  style: AppTextStyles.textStyle24Black,
                ),
              ],
            ),
          ),
          const Expanded(
            child: PageViewAndSmothIndicator(),
          ),
          const SizedBox(height: 33),
          CustomButtom(
            title: 'Create account',
            onTap: () {
              GoRouter.of(context).push('/register');
            },
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Have an account? ',
                style: AppTextStyles.textStyle16Medium.copyWith(
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push('/login');
                },
                child: Text(
                  'Log in',
                  style: AppTextStyles.textStyle16Medium.copyWith(
                    color: AppColors.primaryColor.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 110),
        ],
      ),
    );
  }
}

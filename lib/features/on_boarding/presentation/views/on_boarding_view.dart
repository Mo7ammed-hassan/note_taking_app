import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/widgets/custom_buttom.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/widgets/custom_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final pageViewController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Column(
        children: [
          const SizedBox(height: 75),
          SizedBox(
            height: 500,
            child: PageView(
              controller: pageViewController,
              children: const [
                CustomPageView(),
                CustomPageView(),
                CustomPageView(),
              ],
            ),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: pageViewController,
              count: 3,
              effect: WormEffect(
                activeDotColor: AppColors.primaryColor,
                dotColor: const Color(
                  0xffEEEEF2,
                ),
                dotWidth: 10,
                dotHeight: 10,
              ),
            ),
          ),
          const SizedBox(height: 35),
          CustomButtom(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

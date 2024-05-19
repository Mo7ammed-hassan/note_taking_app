import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/features/on_boarding/presentation/views/widgets/custom_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewAndSmothIndicator extends StatefulWidget {
  const PageViewAndSmothIndicator({
    super.key,
  });

  @override
  State<PageViewAndSmothIndicator> createState() =>
      _PageViewAndSmothIndicatorState();
}

class _PageViewAndSmothIndicatorState extends State<PageViewAndSmothIndicator> {
  final _pageViewController = PageController();
  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageViewController,
            children: const [
              CustomPageView(),
              CustomPageView(),
              CustomPageView(),
              CustomPageView(),
            ],
          ),
        ),
        const SizedBox(
          height: 90,
        ),
        Center(
          child: SmoothPageIndicator(
            controller: _pageViewController,
            count: 4,
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
      ],
    );
  }
}

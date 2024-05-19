import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styls.dart';
import 'package:note_taking_app/core/utils/image_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _opacityAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );
    _animationController.forward();

    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).go('/onBoardingView'),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Center(
        child: AnimatedBuilder(
          animation: _opacityAnimation,
          builder: (context, child) => Opacity(
            opacity: _opacityAnimation.value,
            child: Column(
              children: [
                const SizedBox(height: 170),
                // -- App Icon--
                SvgPicture.asset(Assets.imagesBlack),
                const SizedBox(height: 15),
                // --App Title--
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:note_taking_app/core/utils/app_colors.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/custom_pie_chart_widget.dart';

class ShowSpacingCard extends StatelessWidget {
  const ShowSpacingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 267,
          height: 115,
          margin: const EdgeInsets.only(top: 73),
          decoration: BoxDecoration(
            color: const Color(0xffE7E3FD),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 327,
          height: 141,
          margin: const EdgeInsets.only(top: 23),
          decoration: BoxDecoration(
            color: const Color(0xffB3A4FF),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 358, maxHeight: 141),
          child: AspectRatio(
            aspectRatio: 358 / 141,
            child: Container(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 30,
                left: 25,
                right: 30,
              ),
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomPieChartWidget(),
                  const SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // title
                      Text(
                        'Available Space',
                        style: AppTextStyles.textStyle20Black,
                      ),
                      Text(
                        '20 .254 GB of 25 GB Used',
                        style: AppTextStyles.textStyle12SemiBold
                            .copyWith(color: Colors.white54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}











/*

ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 358, maxHeight: 141),
      child: AspectRatio(
        aspectRatio: 358 / 141,
        child: Container(
          padding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 25, right: 30),
          decoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              //buildBoxShadow(),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomPieChartWidget(),
              const SizedBox(width: 25),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // title
                  Text(
                    'Available Space',
                    style: AppTextStyles.textStyle20Black,
                  ),
                  Text(
                    '20 .254 GB of 25 GB Used',
                    style: AppTextStyles.textStyle12SemiBold
                        .copyWith(color: Colors.white54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );















 */
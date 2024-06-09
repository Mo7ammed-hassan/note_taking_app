import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:note_taking_app/core/utils/app_text_stylesdart';
import 'package:note_taking_app/core/utils/image_assets.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, John !',
              style: AppTextStyles.textStyle14Bold
                  .copyWith(color: const Color(0xffB6B0D9)),
            ),
            Text(
              'Note-Taking App',
              style: AppTextStyles.textStyle22Black,
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            SvgPicture.asset(Assets.imagesAllert),
            const SizedBox(width: 15),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 52, maxWidth: 52),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Assets.imagesOsman),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

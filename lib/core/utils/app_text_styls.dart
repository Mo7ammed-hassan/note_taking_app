import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle textStyle24Black = TextStyle(
    fontSize: 24,
    color: AppColors.secoundryColor,
    fontWeight: FontWeight.w900,
  );
  static TextStyle textStyle20Black = const TextStyle(
    fontSize: 20,
    color: Color(0xffFFFFFF),
    fontWeight: FontWeight.w900,
  );
  static TextStyle textStyle22Black = TextStyle(
    fontSize: 22,
    color: AppColors.mainColor,
    fontWeight: FontWeight.w900,
  );
  static TextStyle textStyle18SemiBold = TextStyle(
    fontSize: 18,
    color: AppColors.noteBodyColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle17SemiBold = TextStyle(
    fontSize: 17,
    color: AppColors.noteBodyColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle17Reqular = TextStyle(
    fontSize: 17,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle16Medium = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle16ExtraBold = TextStyle(
    fontSize: 16,
    color: AppColors.cardHeadColor,
    fontWeight: FontWeight.w800,
  );

  static TextStyle textStyle16Bold = TextStyle(
    fontSize: 16,
    color: AppColors.splashColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyle16SemiBold = TextStyle(
    fontSize: 17,
    color: AppColors.cardBodyColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle16Black = TextStyle(
    fontSize: 16,
    color: AppColors.splashColor,
    fontWeight: FontWeight.w900,
  );

  static TextStyle textStyle14Bold = TextStyle(
    fontSize: 14,
    color: AppColors.noteBodyColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyle14SemiBold = TextStyle(
    fontSize: 14,
    color: AppColors.noteBodyColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle12Reguilar = TextStyle(
    fontSize: 12,
    color: AppColors.secoundryColor,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle12Medium = TextStyle(
    fontSize: 12,
    color: AppColors.cardHeadColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle12SemiBold = TextStyle(
    fontSize: 12,
    color: AppColors.secoundryColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle10Medium = TextStyle(
    fontSize: 10,
    color: AppColors.cardBodyColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle12Bold = TextStyle(
    fontSize: 12,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w700,
  );
}

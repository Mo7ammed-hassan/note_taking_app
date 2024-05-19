import 'package:flutter/material.dart';
import 'package:note_taking_app/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle textStyle24Black = TextStyle(
    fontSize: 24,
    color: AppColors.secoundryColor,
    fontWeight: FontWeight.w900,
    fontFamily: 'Sectra',
  );
  static TextStyle textStyle22Black = TextStyle(
    fontSize: 22,
    color: AppColors.mainColor,
    fontWeight: FontWeight.w900,
    fontFamily: 'Sectra',
  );
   static TextStyle textStyle18SemiBold = TextStyle(
    fontSize: 18,
    color: AppColors.noteBodyColor,
    fontWeight: FontWeight.w600,
    fontFamily: 'Sectra',
  );
  static TextStyle textStyle17SemiBold = TextStyle(
    fontSize: 17,
    color: AppColors.noteBodyColor,
    fontWeight: FontWeight.w600,
    fontFamily: 'Sectra',
  );

  static TextStyle textStyle17Reqular = TextStyle(
    fontSize: 17,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w400,
    fontFamily: 'Sectra',
  );
  static TextStyle textStyle16Medium = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontFamily: 'Sectra',
  );
  static TextStyle textStyle16ExtraBold = TextStyle(
    fontSize: 16,
    color: AppColors.cardHeadColor,
    fontWeight: FontWeight.w800,
    fontFamily: 'Sectra',
  );

  static TextStyle textStyle16Bold = TextStyle(
    fontSize: 16,
    color: AppColors.splashColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'Sectra',
  );
  static TextStyle textStyle16Black = TextStyle(
    fontSize: 16,
    color: AppColors.splashColor,
    fontWeight: FontWeight.w900,
    fontFamily: 'Sectra',
  );

  static TextStyle textStyle14Bold = TextStyle(
    fontSize: 14,
    color: AppColors.noteBodyColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'Sectra',
  );
  static TextStyle textStyle14SemiBold = TextStyle(
    fontSize: 14,
    color: AppColors.noteBodyColor,
    fontWeight: FontWeight.w600,
    fontFamily: 'Sectra',
  );
  static TextStyle textStyle12Reguilar = TextStyle(
    fontSize: 12,
    color: AppColors.secoundryColor,
    fontWeight: FontWeight.w400,
    fontFamily: 'Sectra',
  );

  static TextStyle textStyle12SemiBold = TextStyle(
    fontSize: 12,
    color: AppColors.secoundryColor,
    fontWeight: FontWeight.w600,
    fontFamily: 'Sectra',
  );

  static TextStyle textStyle8Medium = TextStyle(
    fontSize: 8,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w500,
    fontFamily: 'Sectra',
  );
}

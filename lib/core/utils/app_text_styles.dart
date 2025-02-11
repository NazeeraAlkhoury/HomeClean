import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle styleBold11(BuildContext context) => TextStyle(
        color: AppColors.blackColor,
        fontSize: getResponsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.bold,
      );
  static TextStyle styleBold13(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.bold,
      );

  static TextStyle styleBold14(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.bold,
      );

  static TextStyle styleBold16(BuildContext context) => TextStyle(
        color: AppColors.blackColor,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.bold,
      );

  static TextStyle styleBold18(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.bold,
      );

  static TextStyle styleBold20(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.bold,
      );

  static TextStyle styleMedium11(BuildContext context) => TextStyle(
        color: AppColors.whiteColor,
        fontSize: getResponsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMedium14(BuildContext context) => TextStyle(
        color: AppColors.whiteColor,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        color: AppColors.greyColor,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleRegular11(BuildContext context) => TextStyle(
        color: AppColors.darkGreyColor,
        fontSize: getResponsiveFontSize(context, fontSize: 11),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        color: AppColors.darkGreyColor,
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular13(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        color: AppColors.primaryColor,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        color: AppColors.blackColor,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular15(BuildContext context) => TextStyle(
        color: AppColors.blackColor,
        fontSize: getResponsiveFontSize(context, fontSize: 15),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold12(BuildContext context) => TextStyle(
        color: AppColors.blackColor,
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w600,
      );

// Responsive fun
  static double getResponsiveFontSize(BuildContext context,
      {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);

    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = responsiveFontSize * .8;

    double upperLimit = responsiveFontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < 600) {
      return width / 400;
    } else if (width < 900 && width >= 600) {
      return width / 700;
    } else if (width >= 900) {
      return width / 1000;
    }
  }
}

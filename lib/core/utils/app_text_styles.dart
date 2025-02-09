import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle styleRegular20(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.normal,
      );

  static TextStyle styleRegular13(BuildContext context) => TextStyle(
        color: AppColors.darkGreyColor,
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.normal,
      );

  static TextStyle styleBold14(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.bold,
      );

  static TextStyle styleBold20(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.bold,
      );

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

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  final OnboardingItemModel model;
  const PageViewItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(model.image),
        const SizedBox(
          height: 25,
        ),
        Text(
          model.title.tr(),
          style: AppTextStyles.styleBold20(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          model.discription.tr(),
          textAlign: TextAlign.center,
          style: AppTextStyles.styleRegular16(context).copyWith(
            color: AppColors.darkGreyColor,
          ),
        ),
      ],
    );
  }
}

class OnboardingItemModel {
  final String title;
  final String discription;
  final String image;

  OnboardingItemModel(
      {required this.title, required this.discription, required this.image});
}

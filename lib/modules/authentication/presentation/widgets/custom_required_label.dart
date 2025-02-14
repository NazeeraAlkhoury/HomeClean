import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class CustomRequiredLabel extends StatelessWidget {
  const CustomRequiredLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: label,
        style: AppTextStyles.styleRegular11(context),
        children: [
          TextSpan(
            text: '*',
            style: AppTextStyles.styleRegular11(context)
                .copyWith(color: AppColors.redColor),
          ),
        ],
      ),
    );
  }
}

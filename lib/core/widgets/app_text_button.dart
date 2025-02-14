import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final void Function()? onPressed;
  const AppTextButton({
    super.key,
    this.textColor = AppColors.darkGreyColor,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 6,
        ),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      child: Text(
        text,
        style: AppTextStyles.styleRegular13(context).copyWith(
          color: textColor,
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/locale_keys.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class AppTextButton extends StatelessWidget {
  final Color textColor;
  final void Function()? onPressed;
  const AppTextButton({
    super.key,
    this.textColor = AppColors.darkGreyColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        LocaleKeys.exit.tr(),
        style: AppTextStyles.styleRegular13(context).copyWith(
          color: textColor,
        ),
      ),
    );
  }
}

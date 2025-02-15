import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/widgets/app_text_button.dart';

import '../../../../core/localization/locale_keys.dart';
import '../../../../core/utils/app_colors.dart';

class CustomBackRow extends StatelessWidget {
  const CustomBackRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextButton(
          text: LocaleKeys.back.tr(),
        ),
        const Icon(
          Icons.chevron_right,
          color: AppColors.darkGreyColor,
        ),
      ],
    );
  }
}

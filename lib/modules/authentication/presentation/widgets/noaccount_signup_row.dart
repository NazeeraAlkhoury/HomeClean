import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/locale_keys.dart';
import 'package:homeclean/core/utils/app_colors.dart';

import 'package:homeclean/core/utils/app_text_styles.dart';
import 'package:homeclean/core/widgets/app_text_button.dart';

class NoAccountSignUpRow extends StatelessWidget {
  const NoAccountSignUpRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.noAccount.tr(),
          style: AppTextStyles.styleRegular13(context).copyWith(
            color: AppColors.blackColor,
          ),
        ),
        AppTextButton(
          textColor: AppColors.primaryColor,
          onPressed: () {},
          text: LocaleKeys.createAccount.tr(),
        ),
      ],
    );
  }
}

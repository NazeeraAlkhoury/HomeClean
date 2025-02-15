import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/widgets/app_text_button.dart';

import '../../../../core/localization/locale_keys.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomResendCode extends StatelessWidget {
  const CustomResendCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.resendCode.tr(),
          style: AppTextStyles.styleRegular13(context).copyWith(
            color: AppColors.blackColor,
          ),
        ),
        AppTextButton(
          textColor: AppColors.primaryColor,
          onPressed: () {},
          text: '0:19',
        ),
      ],
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/localization/locale_keys.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_image_assets.dart';
import '../../../../core/utils/app_text_styles.dart';

class LoginOtpViewBody extends StatelessWidget {
  const LoginOtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            LocaleKeys.login.tr(),
            style: AppTextStyles.styleBold20(context),
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset(AppImageAssets.mobileLogin),
          const SizedBox(
            height: 40,
          ),
          Text(
            LocaleKeys.sentLoginCode.tr(),
            style: AppTextStyles.styleRegular13(context).copyWith(
              color: AppColors.darkGreyColor,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

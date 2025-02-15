import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/widgets/app_button.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_back_row.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_otp_verification.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_resend_code.dart';

import '../../../../core/localization/locale_keys.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_image_assets.dart';
import '../../../../core/utils/app_text_styles.dart';

class LoginOtpViewBody extends StatelessWidget {
  const LoginOtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 44,
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
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 14),
              child: CustomOtpVerification(),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AppButton(
                label: LocaleKeys.login.tr(),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomResendCode(),
            const SizedBox(
              height: 20,
            ),
            const CustomBackRow(),
          ],
        ),
      ),
    );
  }
}

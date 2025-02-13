import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/locale_keys.dart';

import 'package:homeclean/core/utils/app_image_assets.dart';

import 'package:homeclean/core/utils/app_text_styles.dart';
import 'package:homeclean/core/widgets/app_button.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_form_field.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.login.tr(),
                style: AppTextStyles.styleBold20(context),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(AppImageAssets.mobileLogin),
              const SizedBox(
                height: 30,
              ),
              Text(
                LocaleKeys.enterMobileLogin.tr(),
                style: AppTextStyles.styleRegular13(context),
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomFormField(),
              const SizedBox(
                height: 24,
              ),
              AppButton(
                label: LocaleKeys.next.tr(),
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    LocaleKeys.noAccount.tr(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      LocaleKeys.createAccount.tr(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

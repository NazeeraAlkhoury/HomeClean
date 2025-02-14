// ignore_for_file: avoid_print

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/functions/validate_input.dart';
import 'package:homeclean/core/localization/locale_keys.dart';
import 'package:homeclean/core/utils/app_colors.dart';

import 'package:homeclean/core/utils/app_image_assets.dart';

import 'package:homeclean/core/utils/app_text_styles.dart';
import 'package:homeclean/core/widgets/app_button.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_form_field.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_noaccount_signup.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
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
                  LocaleKeys.enterMobileLogin.tr(),
                  style: AppTextStyles.styleRegular13(context).copyWith(
                    color: AppColors.darkGreyColor,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomFormField(
                        controller: phoneController,
                        hint: '0999205081',
                        label: LocaleKeys.mobileNumber.tr(),
                        keyboardType: TextInputType.phone,
                        onChanged: (value) => print(value),
                        validator: (value) => validateInput(
                          val: value!,
                          min: 10,
                          max: 10,
                          type: 'phone',
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AppButton(
                        label: LocaleKeys.next.tr(),
                        onPressed: () {
                          formKey.currentState?.validate();
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomNoAccountSignUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

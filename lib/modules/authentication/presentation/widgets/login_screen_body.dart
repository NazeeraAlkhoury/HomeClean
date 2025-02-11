import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Text(
              'تسجيل الدخول',
              style: AppTextStyles.styleBold20(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(AppImageAssets.mobileLogin),
            const SizedBox(
              height: 10,
            ),
            Text(
              'أدخل رقم الموبايل لتسجيل الدخول',
              style: AppTextStyles.styleRegular13(context),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomFormField(),
            const SizedBox(
              height: 20,
            ),
            AppButton(
              label: 'ارسال',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

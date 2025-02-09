import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_image_assets.dart';

import 'package:homeclean/core/utils/app_text_styles.dart';
import 'package:homeclean/core/widgets/app_button.dart';

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
            // SizedBox(
            //   height: 10,
            // ),
            // SvgPicture.asset(AppImageAssets.privacyPolicy,
            //     placeholderBuilder: (BuildContext context) =>
            //         const CircularProgressIndicator(),
            //     fit: BoxFit.contain),
            Image.asset(AppImageAssets.mobileLogin),
            const SizedBox(
              height: 10,
            ),
            Text(
              'أدخل رقم الموبايل لتسجيل الدخول',
              style: AppTextStyles.styleRegular13(context),
            ),
            const SizedBox(
              height: 10,
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

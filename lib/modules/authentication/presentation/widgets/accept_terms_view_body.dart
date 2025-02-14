import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/locale_keys.dart';
import 'package:homeclean/core/utils/app_image_assets.dart';
import 'package:homeclean/core/widgets/app_button.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/accept_terms_header.dart';

import '../../../../core/widgets/app_text_button.dart';

class AcceptTermsViewBody extends StatelessWidget {
  const AcceptTermsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AcceptTermsHeader(),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(AppImageAssets.privacyPolicy),
                const SizedBox(
                  height: 50,
                ),
                AppButton(
                  label: LocaleKeys.agreeContinue.tr(),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 5,
                ),
                AppTextButton(
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/locale_keys.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class ChooseLanguageViewBody extends StatelessWidget {
  const ChooseLanguageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.chooseLanguage.tr(),
          style: AppTextStyles.styleRegular20(context),
        ),
      ],
    );
  }
}

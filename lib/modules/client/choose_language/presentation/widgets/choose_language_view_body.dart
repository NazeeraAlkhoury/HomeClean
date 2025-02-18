import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/locale_keys.dart';
import 'package:homeclean/core/utils/app_image_assets.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';
import 'package:homeclean/modules/client/choose_language/presentation/widgets/custom_language_item.dart';

class ChooseLanguageViewBody extends StatefulWidget {
  const ChooseLanguageViewBody({super.key});

  @override
  State<ChooseLanguageViewBody> createState() => _ChooseLanguageViewBodyState();
}

class _ChooseLanguageViewBodyState extends State<ChooseLanguageViewBody> {
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.chooseLanguage.tr(),
          style: AppTextStyles.styleRegular20(context),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomLanguageItem(
                onTap: () {
                  selectLang(lang: 'en');
                },
                text: LocaleKeys.english,
                flagImage: AppImageAssets.usLanguage,
                isSelectedLang: selectedLanguage == 'en',
              ),
              CustomLanguageItem(
                onTap: () {
                  selectLang(lang: 'ar');
                },
                text: LocaleKeys.arabic,
                flagImage: AppImageAssets.saLanguage,
                isSelectedLang: selectedLanguage == 'ar',
              ),
            ],
          ),
        ),
      ],
    );
  }

  void selectLang({required String lang}) {
    setState(() {
      selectedLanguage = lang;
    });
  }
}

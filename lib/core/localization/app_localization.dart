import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

abstract class AppLocalization {
  static const Locale arabicLang = Locale('ar', 'SA');
  static const Locale englishLang = Locale('en', 'US');

  static const Locale fallbackLocale = englishLang;
  static const List<Locale> supportedLocales = [
    englishLang,
    // arabicLang,
  ];

  static const String translationPath = 'assets/translations';

  static Widget localizationWrapper({required Widget child}) {
    return EasyLocalization(
      supportedLocales: supportedLocales,
      path: translationPath,
      fallbackLocale: fallbackLocale,
      child: child,
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/app_localization.dart';
import 'package:homeclean/core/utils/app_themes.dart';
import 'package:homeclean/modules/authentication/presentation/views/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    AppLocalization.localizationWrapper(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeClean',
      theme: AppThemes.lightTheme,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      // localeResolutionCallback: (locale, supportedLocales) {
      //   return supportedLocales.contains(locale) ? locale : Locale('en', 'US');
      // },
      home: const LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

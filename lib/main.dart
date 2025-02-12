import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_themes.dart';
import 'package:homeclean/modules/client/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeClean',
      theme: AppThemes.lightTheme,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

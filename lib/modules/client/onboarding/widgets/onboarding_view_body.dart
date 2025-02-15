import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_image_assets.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImageAssets.logo),
      ],
    );
  }
}

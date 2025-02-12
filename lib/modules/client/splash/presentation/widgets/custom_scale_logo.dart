import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_image_assets.dart';

class CustomScaleLogo extends StatelessWidget {
  const CustomScaleLogo({
    super.key,
    required this.scaleAnimation,
  });

  final Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: Image.asset(
        AppImageAssets.logo,
        height: 200,
        width: 200,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}

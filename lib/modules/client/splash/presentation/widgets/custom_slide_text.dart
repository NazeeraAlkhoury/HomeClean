import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class CustomSlideText extends StatelessWidget {
  const CustomSlideText({
    super.key,
    required this.positionAnimation,
  });

  final Animation<Offset> positionAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: positionAnimation,
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Bringing cleanliness and comfort to your home.',
            style: AppTextStyles.styleBold18(context),
          ),
        ),
      ),
    );
  }
}

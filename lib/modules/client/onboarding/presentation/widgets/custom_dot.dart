import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_colors.dart';

class CustomDot extends StatelessWidget {
  final bool isActive;
  const CustomDot({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 4,
      backgroundColor:
          isActive ? AppColors.primaryColor : AppColors.lightGreyColor,
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class CustomLanguageItem extends StatelessWidget {
  final void Function()? onTap;
  final String flagImage;
  final String text;
  final bool isSelectedLang;
  const CustomLanguageItem({
    super.key,
    this.onTap,
    required this.flagImage,
    required this.text,
    required this.isSelectedLang,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelectedLang ? AppColors.primaryColor : Colors.transparent,
            width: 1,
          ),
        ),
        padding: const EdgeInsetsDirectional.all(16),
        child: Column(
          children: [
            Center(child: SvgPicture.asset(flagImage)),
            const SizedBox(
              height: 10,
            ),
            Text(
              text.tr(),
              style: AppTextStyles.styleRegular16(context).copyWith(
                color: AppColors.darkGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

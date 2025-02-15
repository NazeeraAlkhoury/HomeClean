import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomOtpField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String)? onChanged;

  const CustomOtpField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 10),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: AppTextStyles.styleRegular16(context),
        onChanged: onChanged,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: AppColors.lightGreyColor,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          border: getOutLineBorder(),
          enabledBorder: getOutLineBorder(),
          focusedBorder: getOutLineBorder(isFoucse: true),
        ),
      ),
    );
  }

  OutlineInputBorder getOutLineBorder({bool isFoucse = false}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: isFoucse
          ? const BorderSide(
              color: AppColors.darkGreyColor,
            )
          : BorderSide.none,
    );
  }
}

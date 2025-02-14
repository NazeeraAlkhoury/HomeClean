import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_required_label.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String hint;
  final String label;
  final bool isRequired;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const CustomFormField({
    super.key,
    required this.controller,
    this.keyboardType,
    this.inputFormatters,
    required this.hint,
    this.isRequired = true,
    required this.label,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      validator: validator,
      style: AppTextStyles.styleRegular16(context),
      decoration: InputDecoration(
        border: getOutLineBorder(),
        focusedBorder: getOutLineBorder(),
        enabledBorder: getOutLineBorder(),
        disabledBorder: getOutLineBorder(),
        errorBorder: getOutLineBorder(color: AppColors.redColor),
        focusedErrorBorder: getOutLineBorder(color: AppColors.redColor),

        hintText: hint,
        hintStyle: AppTextStyles.styleRegular16(context)
            .copyWith(color: AppColors.greyColor),
        label: isRequired
            ? CustomRequiredLabel(label: label)
            : Text(
                label,
                style: AppTextStyles.styleRegular11(context),
              ),
        errorStyle: AppTextStyles.styleRegular11(context).copyWith(
          color: AppColors.redColor,
        ),

        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        //prefixText: '+966',
        // hintStyle: AppTextStyles.styleBold14(context).copyWith(
        //   fontWeight: FontWeight.w400,
        // ),
      ),
    );
  }

  OutlineInputBorder getOutLineBorder({
    Color color = AppColors.lightGreyColor,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: color,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      style: AppTextStyles.styleRegular16(context),
      decoration: InputDecoration(
        border: getOutLineBorder(),
        focusedBorder: getOutLineBorder(),
        enabledBorder: getOutLineBorder(),
        disabledBorder: getOutLineBorder(),
        errorBorder: getOutLineBorder(),
        //prefixText: '+966',
        // hintStyle: AppTextStyles.styleBold14(context).copyWith(
        //   fontWeight: FontWeight.w400,
        // ),
        hintText: '0966205081',
        hintStyle: AppTextStyles.styleRegular16(context)
            .copyWith(color: AppColors.greyColor),
        label: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Phone Number ',
            style: AppTextStyles.styleRegular11(context),
            children: [
              TextSpan(
                text: '*',
                style: AppTextStyles.styleRegular11(context)
                    .copyWith(color: AppColors.redColor),
              ),
            ],
          ),
        ),
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      ),
    );
  }

  OutlineInputBorder getOutLineBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.lightGreyColor,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}

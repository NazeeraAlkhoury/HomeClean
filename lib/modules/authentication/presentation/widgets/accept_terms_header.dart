import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/locale_keys.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';

class AcceptTermsHeader extends StatelessWidget {
  const AcceptTermsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Text(
            LocaleKeys.agreeToProcess.tr(),
            style: AppTextStyles.styleRegular15(context),
          ),
          const SizedBox(
            width: 2,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              LocaleKeys.terms.tr(),
              style: AppTextStyles.styleRegular15(context).copyWith(
                color: AppColors.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class InkwellTextButton extends StatelessWidget {
//   final String text;
//   final void Function()? onTap;
//   const InkwellTextButton({
//     super.key,
//     required this.text,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Text(
//         text,
//         style: AppTextStyles.styleRegular13(context).copyWith(
//           color: AppColors.primaryColor,
//           decorationColor: AppColors.primaryColor,
//         ),
//       ),
//     );
//   }
// }

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/functions/validate_input.dart';
import 'package:homeclean/core/localization/locale_keys.dart';

import 'package:homeclean/core/widgets/app_button.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomFormField(
            controller: phoneController,
            hint: '0999205081',
            label: LocaleKeys.mobileNumber.tr(),
            keyboardType: TextInputType.phone,
            // ignore: avoid_print
            onChanged: (value) => print(value),
            validator: (value) => validateInput(
              val: value!,
              min: 10,
              max: 10,
              type: 'phone',
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          AppButton(
            label: LocaleKeys.next.tr(),
            onPressed: () {
              formKey.currentState?.validate();
            },
          ),
        ],
      ),
    );
  }
}

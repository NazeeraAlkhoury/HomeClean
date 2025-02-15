import 'package:flutter/material.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/custom_otp_filed.dart';

class CustomOtpVerification extends StatelessWidget {
  const CustomOtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> controller = List.generate(
      5,
      (index) => TextEditingController(),
    );
    List<FocusNode> focusNode = List.generate(
      5,
      (index) => FocusNode(),
    );

    return Row(
      children: List.generate(5, (index) {
        return Expanded(
          child: CustomOtpField(
            controller: controller[index],
            focusNode: focusNode[index],
            onChanged: (String value) {
              if (value.isNotEmpty && index < 4) {
                FocusScope.of(context).requestFocus(focusNode[index + 1]);
              }

              if (value.isEmpty && index > 0) {
                FocusScope.of(context).requestFocus(focusNode[index - 1]);
              }
            },
          ),
        );
      }),
    );
  }
}


// @override
// void dispose() {
//   for (var node in _focusNodes) {
//     node.dispose();
//   }
//   for (var controller in _controllers) {
//     controller.dispose();
//   }
//   super.dispose();
// }

// void _onOtpEntered(int index, String value) {
//   if (value.isNotEmpty) {
//     if (index < 4) {
//       FocusScope.of(context).nextFocus(); // الانتقال للحقل التالي تلقائيًا
//     } else {
//       _verifyOtp(); // التحقق من OTP عند إدخال الرقم الأخير
//     }
//   }
// }

// void _verifyOtp() {
//   String otpCode = _controllers.map((controller) => controller.text).join();
//   debugPrint("Verifying OTP: $otpCode");
//   // استدعاء API هنا للتحقق من الكود
// }

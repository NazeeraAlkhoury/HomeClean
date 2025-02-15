import 'package:flutter/material.dart';
import 'package:homeclean/modules/authentication/presentation/widgets/login_otp_view_body.dart';

class LoginOtpView extends StatelessWidget {
  const LoginOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginOtpViewBody(),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/modules/authentication/presentation/views/login/login_view.dart';
import 'package:homeclean/modules/client/splash/presentation/widgets/custom_scale_logo.dart';
import 'package:homeclean/modules/client/splash/presentation/widgets/custom_slide_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  late Animation<Offset> positionAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    goToPage();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlueColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomScaleLogo(scaleAnimation: scaleAnimation),
          const SizedBox(
            height: 10,
          ),
          CustomSlideText(positionAnimation: positionAnimation),
        ],
      ),
    );
  }

  void initAnimation() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    positionAnimation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.fastOutSlowIn,
      ),
    );
    scaleAnimation = Tween<double>(
      begin: 0.5,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
      ),
    );
    controller.forward();
  }

  Future<void> goToPage() {
    return Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginView()),
      );
    });
  }
}

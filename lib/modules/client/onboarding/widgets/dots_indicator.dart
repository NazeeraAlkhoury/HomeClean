import 'package:flutter/material.dart';
import 'package:homeclean/modules/client/onboarding/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 4),
          child: CustomDot(
            isActive: currentPage == index,
          ),
        ),
      ),
    );
  }
}

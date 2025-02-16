import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/modules/client/onboarding/presentation/widgets/pageview_item.dart';

class OnBoardingPageView extends StatelessWidget {
  final List<OnboardingItemModel> list;
  final void Function(int)? onPageChanged;
  final PageController pageController;
  const OnBoardingPageView({
    super.key,
    required this.list,
    this.onPageChanged,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      alignment: Alignment.topCenter,
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: onPageChanged,
      itemCount: list.length,
      itemBuilder: (context, index) => PageViewItem(
        model: list[index],
      ),
    );
  }
}

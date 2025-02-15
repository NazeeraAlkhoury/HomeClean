import 'package:easy_localization/easy_localization.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:homeclean/core/localization/locale_keys.dart';
import 'package:homeclean/core/utils/app_colors.dart';
import 'package:homeclean/core/utils/app_image_assets.dart';
import 'package:homeclean/core/utils/app_text_styles.dart';
import 'package:homeclean/core/widgets/app_button.dart';
import 'package:homeclean/core/widgets/app_text_button.dart';
import 'package:homeclean/modules/client/onboarding/widgets/dots_indicator.dart';
import 'package:homeclean/modules/client/onboarding/widgets/pageview_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int currentPage = 0;
  late PageController pageController;
  List<OnboardingItemModel> onBoarding = [
    OnboardingItemModel(
      title: LocaleKeys.onboardingTitle1,
      discription: LocaleKeys.onBoarding1,
      image: AppImageAssets.onBoarding1,
    ),
    OnboardingItemModel(
      title: LocaleKeys.onboardingTitle2,
      discription: LocaleKeys.onBoarding2,
      image: AppImageAssets.onBoarding2,
    ),
    OnboardingItemModel(
      title: LocaleKeys.onboardingTitle3,
      discription: LocaleKeys.onBoarding3,
      image: AppImageAssets.onBoarding3,
    ),
  ];
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    pageController = PageController();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Image.asset(
              AppImageAssets.logo,
              height: 60,
              width: 50,
            ),
            const SizedBox(
              height: 40,
            ),
            ExpandablePageView.builder(
              controller: pageController,
              alignment: Alignment.topCenter,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onBoarding.length,
              itemBuilder: (context, index) => PageViewItem(
                model: onBoarding[index],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            DotsIndicator(currentPage: currentPage),
            const Expanded(
              child: SizedBox(
                height: 25,
              ),
            ),
            AppButton(
              label: LocaleKeys.next.tr(),
              onPressed: () {
                setState(() {
                  if (currentPage < onBoarding.length - 1) {
                    pageController.nextPage(
                      duration: const Duration(
                        seconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  }
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            AppTextButton(
              text: LocaleKeys.previous.tr(),
              onPressed: () {
                setState(() {
                  if (0 < currentPage && currentPage < onBoarding.length) {
                    pageController.previousPage(
                      duration: const Duration(
                        seconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  }
                });
              },
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

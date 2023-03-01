// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_pet_app/config/routes.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:flutter_pet_app/utils/navigator.dart';

import 'package:gap/gap.dart';

import '../../utils/custom_clippers.dart';
import '../../widgets/index/index.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipPath(
              clipper: CurverdBottomClipper(),
              child: Container(
                decoration: const BoxDecoration(
                  color: ColorConstants.korange,
                ),
                height: MediaQuery.of(context).size.height / 2,
                child: PageView(
                  onPageChanged: (pageViewIndex) {
                    setState(() {
                      _currentIndex = pageViewIndex;
                    });
                  },
                  controller: _pageController,
                  children: [
                    Image.asset(ImageConstants.onboarding1, fit: BoxFit.fill),
                    Image.asset(ImageConstants.onboarding2, fit: BoxFit.fill),
                    Image.asset(ImageConstants.onboarding3, fit: BoxFit.fill),
                  ],
                ),
              ),
            ),
            const Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => DotContainerWidget(
                  currentIndex: _currentIndex,
                  index: index,
                  onboardingContext: context,
                ),
              ),
            ),
            const Gap(40),
            Container(
              width: 250,
              child: Text(
                TextConstants.onBoardingTitle,
                style: FontConstants.onboardingTexts.titleLarge,
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(12),
            Container(
              width: 250,
              child: Text(
                TextConstants.onBoardingSubTitle,
                style: FontConstants.onboardingTexts.titleSmall,
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(12),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                )),
                minimumSize: MaterialStateProperty.all(
                  const Size(180.0, 46.0),
                ),
                backgroundColor: MaterialStateProperty.all(
                  ColorConstants.kred,
                ),
              ),
              onPressed: () =>
                  context.pushNamedNavigator(context, Routes.loginScreen),
              child: const Text(TextConstants.onboardingButtonText),
            )
          ],
        ),
      ),
    );
  }
}

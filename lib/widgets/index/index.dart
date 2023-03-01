// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../constants/color_constants/color_constants.dart';
class DotContainerWidget extends StatelessWidget {
  int currentIndex;
  int index;
  BuildContext onboardingContext;
  DotContainerWidget({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onboardingContext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      height: 10,
      width: currentIndex == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? ColorConstants.kred
            : ColorConstants.klightGrey,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}

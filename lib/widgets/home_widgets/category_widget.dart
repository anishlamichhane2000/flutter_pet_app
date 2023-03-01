// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:gap/gap.dart';

class CategoryWidget extends StatelessWidget {
  String categoryImage, categoryName;
  int currentIndex, index;
  CategoryWidget({
    super.key,
    required this.categoryImage,
    required this.categoryName,
    required this.currentIndex,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 100,
      decoration: BoxDecoration(
        color: (currentIndex == index) ? ColorConstants.kred : Colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(50),
          bottom: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: (currentIndex == index)
                ? Colors.white
                : const Color(0xFFDFE0E3),
            backgroundImage: AssetImage(categoryImage),
          ),
          const Gap(10),
          Text(
            categoryName,
            style: TextStyle(
              fontFamily: 'poppins_regular',
              color: (currentIndex == index)
                  ? Colors.white
                  : ColorConstants.kdarkGrey,
            ),
          ),
        ],
      ),
    );
  }
}

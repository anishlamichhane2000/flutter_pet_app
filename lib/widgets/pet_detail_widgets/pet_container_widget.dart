// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:gap/gap.dart';

class PetContainerWidget extends StatelessWidget {
  int color;
  dynamic setPet, getPet;
  PetContainerWidget({
    super.key,
    required this.color,
    required this.setPet,
    required this.getPet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            setPet,
            style: const TextStyle(
              fontFamily: 'poppins_regular',
              fontSize: 16,
            ),
          ),
          const Gap(8),
          Text(
            getPet,
            style: const TextStyle(
              fontFamily: 'poppins_regular',
              fontSize: 12,
              color: ColorConstants.kdarkGrey,
            ),
          ),
        ],
      ),
    );
  }
}

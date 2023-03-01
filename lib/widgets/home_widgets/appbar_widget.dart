import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:gap/gap.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 8.0,
          bottom: 8.0,
          top: 8.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstants.korange,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            ImageConstants.profileImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.location_on_outlined,
            color: ColorConstants.kred,
            size: 20,
          ),
          Gap(4),
          Text(
            "Bhaktapur, Nepal",
            style: TextStyle(
              fontFamily: 'poppins_bold',
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          Gap(4),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 16.0,
            left: 8.0,
            bottom: 8.0,
            top: 8.0,
          ),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:flutter_pet_app/constants/constant_exports.dart';

class FullWidthButton extends StatelessWidget {
  String buttonName;
   FullWidthButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: ColorConstants.kred, borderRadius: BorderRadius.circular(20)),
      child: Text(
        buttonName,
        textAlign: TextAlign.center,
        style: FontConstants.authTexts.labelSmall,
      ),
    );
  }
}

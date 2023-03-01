// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:gap/gap.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText, hintText;
  final bool obscureText;
  final Icon icon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  const AuthTextFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    this.suffixIcon,
    this.validator,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorConstants.kmediumGrey)
      ),
      child: Row(
        children: [
          icon,
          const Gap(16),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller,
              obscureText: obscureText,
              validator: validator,
              style: const TextStyle(
                    fontFamily: 'poppins_bold',
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: suffixIcon,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    labelText: labelText,
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      fontFamily: 'poppins_bold',
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    labelStyle: const TextStyle(
                      fontFamily: 'poppins_regular',
                      color: ColorConstants.kdarkGrey,
                      fontSize: 14,
                    ),
                  ),
            )
          ],))
        ],
      ),
    );
  }
}

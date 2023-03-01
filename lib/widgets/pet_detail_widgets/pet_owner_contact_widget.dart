// ignore_for_file: must_be_immutable

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:gap/gap.dart';

class PetOwnerContactWidget extends StatelessWidget {
  bool isChat;
  PetOwnerContactWidget({
    super.key,
    required this.isChat,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 32,
                    backgroundColor: Color(0xFFDFE0E3),
                    backgroundImage: AssetImage(
                      ImageConstants.userProfile,
                    ),
                  ),
                  const Gap(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Zaahra",
                        style: TextStyle(
                          fontFamily: 'poppins_bold',
                          fontSize: 16,
                        ),
                      ),
                      const Gap(8),
                      const Text(
                        "Previous Owner",
                        style: TextStyle(
                          fontFamily: 'poppins_regular',
                          fontSize: 12,
                        ),
                      ),
                      const Gap(8),
                      isChat == true
                          ? Container()
                          : Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: ColorConstants.kred,
                                ),
                                Text(
                                  "London",
                                  style: FontConstants.commonTexts.titleSmall,
                                ),
                              ],
                            ),
                    ],
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    EvaIcons.messageCircleOutline,
                    color: Color(0xFF4AA2F1),
                  ),
                  Gap(8),
                  Icon(
                    EvaIcons.phoneOutline,
                    color: ColorConstants.kred,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

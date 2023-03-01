// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/color_constants/color_constants.dart';
import '../../models/chat_model.dart';

class ChatWidget extends StatelessWidget {
  ChatModel? chats;
  ChatWidget({
    Key? key,
    this.chats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: const Color(0xFFDFE0E3),
                    backgroundImage: AssetImage(
                      chats!.userImage,
                    ),
                  ),
                  const Gap(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        chats!.userName,
                        style: const TextStyle(
                          fontFamily: 'poppins_bold',
                          fontSize: 16,
                        ),
                      ),
                      const Gap(8),
                      Text(
                        chats!.userMessage,
                        style: const TextStyle(
                          fontFamily: 'poppins_regular',
                          fontSize: 12,
                          color: ColorConstants.kdarkGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    chats!.time,
                    style: const TextStyle(
                      fontFamily: 'poppins_bold',
                      fontSize: 12,
                      color: ColorConstants.kgreen,
                    ),
                  ),
                  const Gap(8),
                  chats!.numberOfMesssages != 0
                      ? Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorConstants.kgreen,
                          ),
                          child: Text(
                            "${chats!.numberOfMesssages}",
                            style: const TextStyle(
                              fontFamily: 'poppins_regular',
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

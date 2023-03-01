import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';
import 'package:flutter_pet_app/models/user_chat_model.dart';

import 'package:gap/gap.dart';

import '../../widgets/comman_app_bar/comman_app_bar.dart';
import '../../widgets/pet_detail_widgets/pet_owner_contact_widget.dart';

class ViewDetailedChatscreen extends StatelessWidget {
  const ViewDetailedChatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CommonAppBarWidget(
            appBarName: 'Chat',
            appBar: AppBar(),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
              children: [
                PetOwnerContactWidget(
                  isChat: true,
                ),
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemCount: UserChatServices.chats.length,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 8,
                      ),
                      child: Align(
                        alignment:
                            UserChatServices.chats[index].isMessager == true
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            width: 200,
                            decoration: BoxDecoration(
                              color: UserChatServices.chats[index].isMessager
                                  ? ColorConstants.kpurple
                                  : ColorConstants.korange,
                              borderRadius:
                                  UserChatServices.chats[index].isMessager ==
                                          true
                                      ? const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(20),
                                        )
                                      : const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(0),
                                        ),
                            ),
                            child: Center(
                              child: Text(
                                UserChatServices.chats[index].userMessage,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorConstants.klightGrey,
                    hintText: 'Write a message..',
                    contentPadding: const EdgeInsets.all(15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    //test
                  },
                ),
                const Gap(24),
              ],
            ),
          )),
    );
  }
}

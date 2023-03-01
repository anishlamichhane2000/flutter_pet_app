import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet_app/config/routes.dart';
import 'package:flutter_pet_app/models/chat_model.dart';
import 'package:flutter_pet_app/models/status_model.dart';

import 'package:gap/gap.dart';

import '../../widgets/chat/chat_widget.dart';
import '../../widgets/comman_app_bar/comman_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBarWidget(
        appBar: AppBar(),
        appBarName: 'Messages',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: Icon(EvaIcons.plus),
                      ),
                      Gap(8),
                      Text("Add"),
                    ],
                  ),
                  const Gap(8),
                  Expanded(
                    child: ListView.builder(
                      itemCount: StatusServices.StatusModels.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        var chats = StatusServices.StatusModels[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: chats.hasStatus == true
                                      ? Colors.red
                                      : Colors.transparent,
                                ),
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundImage: AssetImage(chats.userImage),
                                  backgroundColor: const Color(0xFFDFE0E3),
                                ),
                              ),
                              const Gap(8),
                              Text(chats.userName),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // chat
            Expanded(
              child: ListView.builder(
                itemCount: ChatServices.chats.length,
                itemBuilder: (context, index) {
                  var chats = ChatServices.chats[index];
                  return GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, Routes.detailedChat),
                    child: ChatWidget(
                      chats: chats,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

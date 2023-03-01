import 'package:flutter_pet_app/constants/constant_exports.dart';

class ChatModel {
  String userName, userImage, userMessage, time;
  int numberOfMesssages;
  ChatModel({
    required this.userName,
    required this.userImage,
    required this.userMessage,
    required this.time,
    required this.numberOfMesssages,
  });
}

class ChatServices {
  static List<ChatModel> chats = [
    ChatModel(
      userName: 'Janwi ',
      userImage: ImageConstants.profileImage,
      userMessage: 'Hello, is there any cat',
      time: '23 min',
      numberOfMesssages: 2,
    ),
    ChatModel(
      userName: 'Kappor',
      userImage: ImageConstants.profileImage,
      userMessage: 'Hello, is there any bull dog',
      time: '1 day',
      numberOfMesssages: 20,
    ),
  ];
}

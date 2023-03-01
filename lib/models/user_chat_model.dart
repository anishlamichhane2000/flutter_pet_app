class UserChatModel {
  String userMessage;
  bool isMessager;
  UserChatModel({
    required this.userMessage,
    required this.isMessager,
  });
}

class UserChatServices {
  static List<UserChatModel> chats = [
    UserChatModel(
      userMessage: 'I would like to see your dog',
      isMessager: false,
    ),
    UserChatModel(
      userMessage: 'Tell me?',
      isMessager: true,
    ),
    UserChatModel(
      userMessage: 'Yo',
      isMessager: false,
    ),
  ];
}

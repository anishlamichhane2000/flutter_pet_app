// ignore_for_file: non_constant_identifier_names

import 'package:flutter_pet_app/constants/constant_exports.dart';

class StatusModel {
  String userName, userImage, userMessage;
  bool hasStatus;
  StatusModel({
    required this.userName,
    required this.userImage,
    required this.userMessage,
    required this.hasStatus,
  });
}

class StatusServices {
  static List<StatusModel> StatusModels = [
    StatusModel(
      userName: 'Honey',
      userImage: ImageConstants.dog1,
      userMessage: 'test1',
      hasStatus: true,
    ),
    StatusModel(
      userName: 'Sam',
      userImage: ImageConstants.dog2,
      userMessage: 'test2',
      hasStatus: false,
    ),
  ];
}

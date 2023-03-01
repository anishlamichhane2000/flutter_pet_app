import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';

class FontConstants {
  static const TextTheme onboardingTexts = TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'poppins_bold',
      fontSize: 25,
    ),
    titleSmall: TextStyle(
      fontFamily: 'poppins_regular',
      fontSize: 15,
      color: ColorConstants.kdarkGrey,
    ),
  );

  static const TextTheme authTexts = TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'poppins_bold',
      fontSize: 24,
    ),
    titleSmall: TextStyle(
      fontFamily: 'poppins_regular',
      fontSize: 15,
      color: ColorConstants.kdarkGrey,
    ),
    labelSmall: TextStyle(
      fontFamily: 'poppins_regular',
      fontSize: 17,
      color: Colors.white,
    ),
  );

  static const TextTheme commonTexts = TextTheme(
    titleSmall: TextStyle(
      fontFamily: 'poppins_regular',
      fontSize: 13,
    ),
  );
}

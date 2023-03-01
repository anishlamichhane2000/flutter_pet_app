import 'package:flutter/material.dart';
import 'package:flutter_pet_app/screens/Account_screen.dart/account_screen.dart';
import 'package:flutter_pet_app/screens/Auth/login_screen.dart';
import 'package:flutter_pet_app/screens/Home_Screen/home_screen.dart';
import 'package:flutter_pet_app/screens/chat_screens/view_detailed_chat_screen.dart';
import 'package:flutter_pet_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_pet_app/screens/pet_detail_screen/pet_detail_screen.dart';
import 'package:flutter_pet_app/screens/tab_navigation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/routes.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.onboardingScreen,
      routes: {
        Routes.createAccount: (context) => const CreateAccountScreen(),
        Routes.onboardingScreen: (context) => const OnboardingScreen(),
        Routes.loginScreen: (context) => const RegistrationScreen(),
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.registerScreen: (context) => const RegistrationScreen(),
        Routes.petDetailScreen: (context) => const PetDetailScreen(),
        Routes.bottomNav: (context) => const TabNavigation(),
        Routes.detailedChat: (context) => const ViewDetailedChatscreen(),
      },
    );
  }
}

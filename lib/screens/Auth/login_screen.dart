// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_web_libraries_in_flutter, unused_import

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_pet_app/utils/navigator.dart';
import 'package:flutter_pet_app/utils/valigator_utils.dart';
import 'package:gap/gap.dart';

import '../../config/routes.dart';
import '../../constants/color_constants/color_constants.dart';
import '../../constants/font_constants/font_constants.dart';
import '../../constants/icon_constants/icon_constants.dart';
import '../../constants/image_constants/image_constants.dart';
import '../../widgets/auth/auth_show_password.dart';
import '../../widgets/auth/auth_textfield_widget.dart';
import '../../widgets/button/width_button.dart';
import '../Home_Screen/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // start of texteditingcontrollers
  TextEditingController nameTextField = TextEditingController();
  TextEditingController usernameTextField = TextEditingController();
  TextEditingController passwordTextField = TextEditingController();
  //  end of text editing controllers

  // bool values
  bool isShowPassword = false;
  // end of values

  // form key
  final _formKey = GlobalKey<FormState>();
  // end of form key

  // end of button submit

  // dispose method
  @override
  void dispose() {
    nameTextField.dispose();
    usernameTextField.dispose();
    passwordTextField.dispose();
    super.dispose();
  }
  // end of dispse method

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Gap(24),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(40),
                            child: Image.asset(
                              ImageConstants.authTopImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Gap(40),
                        Center(
                          child: Text(
                            "Sign Up",
                            style: FontConstants.authTexts.titleLarge,
                          ),
                        ),
                        const Gap(8),
                        Center(
                          child: Text(
                            "Enter your credentials to continue",
                            style: FontConstants.authTexts.titleSmall,
                          ),
                        ),
                        const Gap(24),
                        AuthTextFieldWidget(
                          controller: nameTextField,
                          hintText: 'Anish lamichhane',
                          labelText: 'Name',
                          obscureText: false,
                          icon: IconConstants.personIcon,
                        ),
                        const Gap(8),
                        AuthTextFieldWidget(
                          controller: usernameTextField,
                          hintText: 'anishlamichhane88@gmail.com',
                          labelText: 'Email or Username',
                          obscureText: false,
                          icon: IconConstants.emailIcon,
                          validator: (emailValidator) {
                            if (emailValidator!.emailErrorText == false) {
                              return 'Email address should be as example@gmail.com';
                            }
                            return null;
                          },
                        ),
                        const Gap(8),
                        AuthTextFieldWidget(
                          controller: passwordTextField,
                          hintText: 'xxxx',
                          labelText: 'Password',
                          obscureText: isShowPassword == true ? false : true,
                          icon: IconConstants.passIcon,
                          suffixIcon: AuthShowPasswordWidget(
                            showpassword: (showPassword) {
                              setState(() {
                                isShowPassword = showPassword;
                              });
                            },
                          ),
                          validator: (passwordValidator) {
                            if (passwordValidator!.passwordErrorText == false) {
                              return 'minimum 8 characters and 1 capital letter required';
                            }
                            return null;
                          },
                        ),
                        const Gap(24),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: FullWidthButton(
                            buttonName: 'Sign Up',
                          ),
                        ),
                        const Gap(16),
                        GestureDetector(
                          onTap: () => context.pushNamedNavigator(
                              context, Routes.loginScreen),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: "Already have an account?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'poppins_regular',
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' Sign In',
                                      style: TextStyle(
                                        color: ColorConstants.kred,
                                        fontFamily: 'poppins_regular',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: ColorConstants.kred,
                              )
                            ],
                          ),
                        ),
                        const Gap(24),
                        Expanded(
                          child: Image.asset(
                            ImageConstants.registrationBottomImage,
                            height: 160,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

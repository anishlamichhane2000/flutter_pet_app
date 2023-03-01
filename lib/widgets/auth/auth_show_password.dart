import 'package:flutter/material.dart';
import 'package:flutter_pet_app/constants/constant_exports.dart';

class AuthShowPasswordWidget extends StatefulWidget {
  final Function(dynamic) showpassword;
  const AuthShowPasswordWidget({Key? key, required this.showpassword})
      : super(key: key);

  @override
  State<AuthShowPasswordWidget> createState() => _AuthShowPasswordWidgetState();
}

class _AuthShowPasswordWidgetState extends State<AuthShowPasswordWidget> {
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () => setState(() {
      isShowPassword =!isShowPassword;
      widget.showpassword(isShowPassword);
    }), icon: isShowPassword == true
    ? IconConstants.viewPassIcon
    :IconConstants.unViewPasswordIcon );
  }
}

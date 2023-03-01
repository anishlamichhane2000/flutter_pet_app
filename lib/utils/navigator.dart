import 'package:flutter/material.dart';

extension NavigatorExtensions on BuildContext {
  Future<dynamic> pushNamedNavigator(BuildContext context, dynamic path) =>
      Navigator.pushNamed(context, path);
}
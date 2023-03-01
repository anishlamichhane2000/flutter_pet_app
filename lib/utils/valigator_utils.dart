extension NavigatorExtensionutils on String {
  bool? get emailErrorText {
    var emailregex = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    // check when the  name for registration is accepatble or not.

    return (emailregex.hasMatch(this));
  }
  bool? get passwordErrorText {
    var passwordregex = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    // check  passwordwhen the  name for registration is accepatble or not.

    return (passwordregex.hasMatch(this));
  }
}

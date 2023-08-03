import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/manage_routes.dart';

class SignInGetX extends GetxController {
  static SignInGetX get to => Get.find();
  late TextEditingController _email;
  late TextEditingController _password;
  late TapGestureRecognizer _recognizer;

  final RxBool _statusObscureText = false.obs;
  final RxBool _rememberMe = false.obs;

  TextEditingController get email => _email;

  TextEditingController get password => _password;

  TapGestureRecognizer get recognizer => _recognizer;

  bool get statusObscureText => _statusObscureText.value;

  bool get rememberMe => _rememberMe.value;

  set rememberMe(bool value) => _rememberMe.value = value;

  @override
  void onInit() {
    super.onInit();
    _email = TextEditingController();
    _password = TextEditingController();
    _recognizer = TapGestureRecognizer()
      ..onTap = () => Get.toNamed(ManageRoutes.signUpScreen);
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _recognizer.dispose();
    super.dispose();
  }

  void changeStatusObscureText() {
    _statusObscureText(!_statusObscureText.value);
  }

  void signIn() {
    if (_checkData()) {}
  }

  bool _checkData() {
    if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
      return true;
    }
    return false;
  }
}

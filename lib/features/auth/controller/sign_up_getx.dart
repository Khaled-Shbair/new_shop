import '../../../core/resources/manage_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpGetX extends GetxController {
  static SignUpGetX get to => Get.find();
  late TextEditingController _userName;
  late TextEditingController _email;
  late TextEditingController _password;
  late TextEditingController _confirmPassword;
  late TapGestureRecognizer _recognizer;
  final RxBool _statusObscureText = false.obs;

  TextEditingController get userName => _userName;

  TextEditingController get email => _email;

  TextEditingController get password => _password;

  TextEditingController get confirmPassword => _confirmPassword;

  TapGestureRecognizer get recognizer => _recognizer;

  bool get statusObscureText => _statusObscureText.value;

  @override
  void onInit() {
    super.onInit();
    _userName = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    _recognizer = TapGestureRecognizer()
      ..onTap = () => Get.toNamed(ManageRoutes.signInScreen);
  }

  @override
  void dispose() {
    _userName.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  void changeStatusObscureText() {
    _statusObscureText(!_statusObscureText.value);
  }

  bool _checkData() {
    if (_email.text.isNotEmpty &&
        _password.text.isNotEmpty &&
        _userName.text.isNotEmpty &&
        _confirmPassword.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void signUp() {
    if (_checkData()) {}
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordGetX extends GetxController {
  static ChangePasswordGetX get to => Get.find();
  late TextEditingController _oldPassword;
  late TextEditingController _newPassword;
  late TextEditingController _confirmNewPassword;

  TextEditingController get oldPassword => _oldPassword;

  TextEditingController get newPassword => _newPassword;

  TextEditingController get confirmNewPassword => _confirmNewPassword;

  @override
  void onInit() {
    super.onInit();
    _oldPassword = TextEditingController();
    _newPassword = TextEditingController();
    _confirmNewPassword = TextEditingController();
  }

  @override
  void dispose() {
    _oldPassword.dispose();
    _newPassword.dispose();
    _confirmNewPassword.dispose();
    super.dispose();
  }

  bool _checkData() {
    if (_oldPassword.text.isNotEmpty &&
        _newPassword.text.isNotEmpty &&
        _confirmNewPassword.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void changePassword() {
    if (_checkData()) {}
  }
}

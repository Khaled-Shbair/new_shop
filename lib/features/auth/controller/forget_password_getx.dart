import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordGetX extends GetxController {
  static ForgetPasswordGetX get to => Get.find();
  late TextEditingController _email;

  TextEditingController get email => _email;

  @override
  void onInit() {
    super.onInit();
    _email = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  bool _checkData() {
    if (_email.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void forgetPassword() {
    if (_checkData()) {}
  }
}

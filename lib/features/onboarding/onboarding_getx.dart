import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingGetX extends GetxController {
  static OnboardingGetX get to => Get.find();
  late PageController _pageController;

  PageController? get pageController => _pageController;
  final RxInt _currentPageIndex = 0.obs;

  int get currentPageIndex => _currentPageIndex.value;

  set currentPageIndex(int value) => _currentPageIndex.value = value;

  @override
  void onInit() {
    super.onInit();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

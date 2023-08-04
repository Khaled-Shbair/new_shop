import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants.dart';

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

  void previousPage() {
    pageController!.previousPage(
      duration: const Duration(
        seconds: Constants.durationToReturnToPreviousPageInOnboardingScreen,
      ),
      curve: Curves.easeInOut,
    );
  }

  bool currentPage(int page) {
    if (_currentPageIndex.value == page) {
      return true;
    }
    return false;
  }
}

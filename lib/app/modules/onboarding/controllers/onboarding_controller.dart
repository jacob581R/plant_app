import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  void onPageChanged(int page) {
    currentIndex = page;
  }

  void arrow_step() {
    if (currentIndex < 2) {
      currentIndex++;
    }
    if (currentIndex < 3) {
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

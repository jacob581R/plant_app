import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  void onPageChanged(int index) {
    currentIndex = index;
  }

  void arrow_step() {
    if (currentIndex <= 2) {
      currentIndex++;
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }

    if (currentIndex > 2) {
      Get.toNamed('/login');
    }
  }



}

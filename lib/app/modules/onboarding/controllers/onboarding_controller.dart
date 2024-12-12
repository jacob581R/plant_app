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
<<<<<<< HEAD
      Get.toNamed('/login');
=======
      Get.toNamed('/root-page');
>>>>>>> 335b8083f183c971ff06476ad8a2176c8448aaba
    }
  }



}

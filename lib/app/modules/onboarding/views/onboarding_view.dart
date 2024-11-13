import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plant_app/constants/constant_file.dart';

import '../controllers/onboarding_controller.dart';
import '../../../../widgets/onboardingslide.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: InkWell(
                onTap: () {}, // to login screen
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            GetBuilder(
              builder: (OnboardingController controller) => PageView(
                onPageChanged: controller.onPageChanged,
                controller: controller.pageController,
                children: [
                  /// the slide info
                  OnbardingSlide(
                    image: 'assets/images/plant-one.png',
                    title: Constants.titleOne,
                    descreption: Constants.descriptionOne,
                  ),
                  OnbardingSlide(
                    image: 'assets/images/plant-two.png',
                    title: Constants.titleTwo,
                    descreption: Constants.descriptionTwo,
                  ),
                  OnbardingSlide(
                    image: 'assets/images/plant-three.png',
                    title: Constants.titleThree,
                    descreption: Constants.descriptionThree,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 60,
              right: 30,
              child: IconButton(
                onPressed: controller.arrow_step,
                icon: Icon(
                  Icons.arrow_forward,
                  size: 24.0,
                  color: Constants.primaryColor,
                ),
              ),
            ),
          ],
        ));
  }
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    height: 10,
    width: isActive ? 20 : 8,
    margin: EdgeInsets.only(right: 5.0),
    decoration: BoxDecoration(color: Colors.black),
  );
}

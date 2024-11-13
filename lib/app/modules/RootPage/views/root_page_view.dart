import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plant_app/constants/constant_file.dart';

import '../controllers/root_page_controller.dart';

class RootPageView extends GetView<RootPageController> {
  const RootPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: GetBuilder(
            builder: (RootPageController controller) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.titleList[controller.bottomNavIndex],
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                Icon(
                  Icons.notifications,
                  color: Constants.blackColor,
                  size: 30.0,
                )
              ],
            ),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.0,
        ),
        body: GetBuilder(
          builder: (RootPageController controller) => IndexedStack(
            index: controller.bottomNavIndex,
            children: controller.widgetOptions(),
          ),
        ),

        // plant scann button
        floatingActionButton: FloatingActionButton(
          onPressed: controller.scanAction,
          backgroundColor: Constants.primaryColor,
          child: Image.asset(
            'assets/images/code-scan-two.png',
            height: 30.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: GetBuilder(
          builder: (RootPageController controller) =>
              AnimatedBottomNavigationBar(
                  splashColor: Constants.primaryColor,
                  activeColor: Constants.primaryColor,
                  inactiveColor: Colors.black.withOpacity(.5),
                  icons: controller.iconList,
                  activeIndex: controller.bottomNavIndex,
                  gapLocation: GapLocation.center,
                  notchSmoothness: NotchSmoothness.softEdge,
                  onTap: controller.ontapnavigationbar),
        ));
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plant_app/app/modules/RootPage/controllers/root_page_controller.dart';

class ProfilePageView extends GetView<RootPageController> {
  const ProfilePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfilePageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfilePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

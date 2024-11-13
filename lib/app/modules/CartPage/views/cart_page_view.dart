import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/modules/RootPage/controllers/root_page_controller.dart';

class CartPageView extends GetView<RootPageController> {
  const CartPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CartPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

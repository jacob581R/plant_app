import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favourite_page_controller.dart';

class FavouritePageView extends GetView<FavouritePageController> {
  const FavouritePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavouritePageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FavouritePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

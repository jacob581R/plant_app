import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:plant_app/app/modules/RootPage/controllers/root_page_controller.dart';

import '../../../../constants/constant_file.dart';

class CartPageView extends GetView<RootPageController> {
  const CartPageView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: controller.myCart.isEmpty?
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image.asset('assets/images/add-cart.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your Cart is Empty',
              style: TextStyle(
                color: Constants.primaryColor,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ):
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        height: size.height * .5,
        child: ListView.builder(
            itemCount:controller.myCart.length,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context,int index){
              return Container(
                decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)
                ),
                height: 80.0,
                padding: EdgeInsets.only(left: 10,top: 10),
                margin: EdgeInsets.only(bottom: 10,top: 10),
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Constants.primaryColor.withOpacity(0.8),
                              shape: BoxShape.circle
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: SizedBox(
                              height: 80.0,
                              child: Image.asset(controller.myCart[index].imageURL),
                            )
                        ),
                        Positioned(
                            bottom: 5,
                            left: 80,
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller.myCart[index].category),
                                Text(controller.myCart[index].plantName,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),)
                              ],
                            ))
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(r'$'+ controller.myCart[index].price.toString(),style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Constants.primaryColor
                      ),),
                    )
                  ],
                ),

              );
            }
        ),
      )
=======

import 'package:get/get.dart';

import '../controllers/cart_page_controller.dart';

class CartPageView extends GetView<CartPageController> {
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
>>>>>>> 335b8083f183c971ff06476ad8a2176c8448aaba
    );
  }
}

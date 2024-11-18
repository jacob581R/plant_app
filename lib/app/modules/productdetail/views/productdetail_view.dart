import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants/constant_file.dart';
import '../controllers/productdetail_controller.dart';

class ProductdetailView extends GetView<ProductdetailController> {

   ProductdetailView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
       body: Stack(
         children: [
           Positioned(
             right: 20,
               left: 20,
               top: 48,
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   GestureDetector(
                     onTap:()=> Get.back(),
                     child: Container(
                       height: 40,
                       width: 40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Constants.primaryColor.withOpacity(.15),
                       ),
                       child: Icon(
                         Icons.close,
                         color: Constants.primaryColor,
                       ),
                     ),
                   ),
                   GestureDetector(
                     onTap:null,
                     child: Container(
                       height: 40,
                       width: 40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Constants.primaryColor.withOpacity(.15),
                       ),
                       child: Icon(
                         controller.plantList[controller.args['plantid']].isFavorated==true? Icons.favorite:
                         Icons.favorite_border
                         ,
                         color: Constants.primaryColor,
                       ),
                     ),
                   ),
                 ],
               ),
           ),
           Positioned(
                top: 100,
                left: 20,
                right: 20,
                child: Container(
                width: size.width * .8,
                height: size.height * .8,
                padding: const EdgeInsets.all(20),
                child: Stack(
                children: [
                Positioned(
                top: 10,
                left: 0,
                child: SizedBox(
                height: 350,
                child: Image.asset(controller.plantList[controller.args['plantid']].imageURL),
                ),
                ),

                 Positioned(
                     top: 10,
                     right: 0,
                     child: SizedBox(
                       height: 200,
                       child:
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           PlantFeature(
                             title: 'Size',
                             plantfeature: controller.plantList[controller.args['plantid']].size,
                           ),
                           PlantFeature(
                             title: 'Humidity',
                             plantfeature:
                             controller.plantList[controller.args['plantid']].humidity.toString(),
                           ),
                           PlantFeature(
                             title: 'Temperature',
                             plantfeature:
                             controller.plantList[controller.args['plantid']].temperature,
                           ),
                         ],
                       )
                     )
                    ),

                    ],
                    )
                    )
                      ),
           Positioned(
               bottom: 0,
               left: 0,
               right: 0,

               child: Container(
                 padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
                 height: size.height * .5,
                 width: size.width,
                 decoration: BoxDecoration(
                   color: Constants.primaryColor.withOpacity(.4),
                   borderRadius: const BorderRadius.only(
                     topRight: Radius.circular(30),
                     topLeft: Radius.circular(30),
                   ),
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.plantList[1].plantName,
                              style: TextStyle(
                                color: Constants.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              r'$' + controller.plantList[1].price.toString(),
                              style: TextStyle(
                                color: Constants.blackColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                           ],
                           ),
                       Row(
                         children: [
                           Text(
                             controller.plantList[1].rating.toString(),
                             style: TextStyle(
                               fontSize: 30.0,
                               color: Constants.primaryColor,
                             ),
                           ),
                           Icon(
                             Icons.star,
                             size: 30.0,
                             color: Constants.primaryColor,
                           ),
                         ],
                       )
                     ],
                    ),
                     const SizedBox(
                       height: 5.0,
                     ),
                     Expanded(
                       child: Text(
                         controller.plantList[1].decription,
                         textAlign: TextAlign.justify,
                         style: TextStyle(
                           height: 1.5,
                           fontSize: 18,
                           color: Constants.blackColor.withOpacity(.7),
                         ),
                       ),
                     ),
              ]
                 )
               )
           ),
         ]
    ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 50,
        child:Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: controller.plantList[1].isSelected == true ? Constants.primaryColor.withOpacity(.5) : Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: Constants.primaryColor.withOpacity(.3),
                    ),
                  ]),
              child:IconButton(onPressed:null, icon: Icon(
                Icons.shopping_cart,
                color: controller.plantList[1].isSelected == true ? Colors.white : Constants.primaryColor,
              )),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: Constants.primaryColor.withOpacity(.3),
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
        ,
      ),
    );

  }
}

class PlantFeature extends StatelessWidget {
  final String plantfeature;
  final String title;
  const PlantFeature({
    super.key,
    required this.plantfeature,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          color: Constants.blackColor,
        ),),
        Text(plantfeature,style: TextStyle(
          color: Constants.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold

        ),)
      ],
    );
  }
}

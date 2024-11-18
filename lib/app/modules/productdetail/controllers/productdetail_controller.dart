import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../constants/plants.dart';

class ProductdetailController extends GetxController {


 //Extract arguments using Get.arguments
 final args = Get.arguments as Map<String, dynamic>;


 // ProductdetailController(BuildContext context){
 //  args = ModalRoute.of(context)?.settings.arguments as Map?;
 // }
 // int getId() {
 //   return args?['id'] ?? 0;
 // }
  List<Plant> plantList = Plant.plantList;


}

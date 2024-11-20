
import 'package:get/get.dart';
import '../../../../constants/shareddata.dart';
import '../../../../constants/plants.dart';

class ProductdetailController extends GetxController {
 SharedData sharedData = SharedData();
 // the list of plants
 List<Plant> plantList = Plant.plantList;
List<Plant> mycart = SharedData().getmyCart();


 //Extract arguments using Get.arguments
 final args = Get.arguments as Map<String, dynamic>;

 void addtocart(){
   plantList[args['plantid']].isSelected =!plantList[args['plantid']].isSelected;
   if(plantList[args['plantid']].isSelected==true){
    mycart.add(plantList[args['plantid']]);
    sharedData.updatemycart(mycart);
    print(mycart);
   }
 update();

 }


 void addtofavouritelist(){
  plantList[args['plantid']].isFavorated = !plantList[args['plantid']].isFavorated;
  // if(plantList[args['plantit']].isFavorated==true){
  //  rootPageController.favorites.add(plantList[args['plantid']]);
  // }
  update();
 }

}

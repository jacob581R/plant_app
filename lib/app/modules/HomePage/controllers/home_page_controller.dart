import 'package:get/get.dart';
import 'package:plant_app/constants/plants.dart';

class HomePageController extends GetxController {
  int selectedIndex = 0;
  List<Plant> plantList = Plant.plantList;

  //Plants category
  List<String> plantTypes = [
    'Recommended',
    'Indoor',
    'Outdoor',
    'Garden',
    'Supplement',
  ];
  //Toggle Favorite button
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }


}

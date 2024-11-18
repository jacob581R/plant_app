
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/constants/plants.dart';
import '../../HomePage/views/home_page_view.dart';
import '../../CartPage/views/cart_page_view.dart';
import '../../FavouritePage/views/favourite_page_view.dart';
import '../../ProfilePage/views/profile_page_view.dart';

class RootPageController extends GetxController {
  List<Plant> favorites = [];
  List<Plant> myCart = [];

  int bottomNavIndex = 0;
  List<Plant> plantList = Plant.plantList;

  //List of the pages icons
  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];
  int selectedIndex = 0;
//Plants category
  List<String> plantTypes = [
    'Recommended',
    'Indoor',
    'Outdoor',
    'Garden',
    'Supplement',
  ];
  void gesturedetectortapped(int index) {
    selectedIndex = index;
    update();
  }

  //List of the pages titles
  List<String> titleList = [
    'Home',
    'Favorite',
    'Cart',
    'Profile',
  ];

//List of the pages
  List<Widget> widgetOptions() {
    return [
      const HomePageView(),
      FavouritePageView(
          // favoritedPlants: favorites,
          ),
      CartPageView(
          // addedToCartPlants: myCart,
          ),
      const ProfilePageView(),
    ];
  }

  void scanAction() {
    Get.toNamed('/scan');
  }
void ontapcarditem(index){

    Get.toNamed('/productdetail',
        arguments:
        {
          'plantid':plantList[index].plantId,
        } );

}
  void ontapnavigationbar(int index) {
    bottomNavIndex = index;
    update();
  }

void favouritecallback (int index){
  plantList[index].isFavorated = !plantList[index].isFavorated;
  update();
}

}

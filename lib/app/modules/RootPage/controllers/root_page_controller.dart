<<<<<<< HEAD

=======
>>>>>>> 335b8083f183c971ff06476ad8a2176c8448aaba
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/constants/plants.dart';
import '../../HomePage/views/home_page_view.dart';
import '../../CartPage/views/cart_page_view.dart';
import '../../FavouritePage/views/favourite_page_view.dart';
import '../../ProfilePage/views/profile_page_view.dart';
<<<<<<< HEAD
import '../../../../constants/shareddata.dart';

class RootPageController extends GetxController {

 SharedData sharedData =SharedData();
  List<Plant> favorites =  SharedData().getfavourites();
  List<Plant> myCart = SharedData().getmyCart();


  int bottomNavIndex = 0;
  List<Plant> plantList = Plant.plantList;
=======

class RootPageController extends GetxController {
  List<Plant> favorites = [];
  List<Plant> myCart = [];

  int bottomNavIndex = 0;
>>>>>>> 335b8083f183c971ff06476ad8a2176c8448aaba

  //List of the pages icons
  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];
<<<<<<< HEAD
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
=======
>>>>>>> 335b8083f183c971ff06476ad8a2176c8448aaba

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
<<<<<<< HEAD
void ontapcarditem(index){

    Get.toNamed('/productdetail',
        arguments:
        {
          'plantid':plantList[index].plantId,
        } );

}
=======

>>>>>>> 335b8083f183c971ff06476ad8a2176c8448aaba
  void ontapnavigationbar(int index) {
    bottomNavIndex = index;
    update();
  }

<<<<<<< HEAD
void favouritecallback (int index){
  plantList[index].isFavorated = !plantList[index].isFavorated;
  if(plantList[index].isFavorated==true){
    favorites.add(plantList[index]);
    sharedData.updatefavourites(favorites);
  }
  if(plantList[index].isFavorated==false){
    favorites.remove(plantList[index]);
    sharedData.updatefavourites(favorites);
  }
  update();
}
=======

>>>>>>> 335b8083f183c971ff06476ad8a2176c8448aaba

}



import 'package:plant_app/constants/plants.dart';

class SharedData{



  List<Plant> favourites=[];
  List <Plant> myCart=[];

  // get favourites
  List<Plant> getfavourites(){
    return favourites;
  }
  List<Plant> getmyCart(){
    return myCart;
  }
  // update favourites
  void updatefavourites(List<Plant> newfavourites){
    favourites= newfavourites;
  }
  // update mycart
  void updatemycart(List<Plant>mynewcart){
    myCart = mynewcart;
}
}
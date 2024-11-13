import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/app/modules/RootPage/controllers/root_page_controller.dart';
import 'package:plant_app/constants/constant_file.dart';

class HomePageView extends GetView<RootPageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // coding the search bar

          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  width: size.width * .9,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black54.withOpacity(.6),
                      ),
                      const Expanded(
                          child: TextField(
                        showCursor: false,
                        decoration: InputDecoration(
                          hintText: 'Search Plant',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      )),
                      Icon(
                        Icons.mic,
                        color: Colors.black54.withOpacity(.6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // coding the tao catogrey
          GetBuilder(
              builder: (RootPageController controller) => (Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    height: 50,
                    width: size.width,
                    child: ListView.builder(
                        itemCount: controller.plantTypes.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            (Padding(
                              padding: EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  controller.plantTypes[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight:
                                          controller.selectedIndex == index
                                              ? FontWeight.bold
                                              : FontWeight.w300,
                                      color: controller.selectedIndex == index
                                          ? Constants.primaryColor
                                          : Constants.blackColor),
                                ),
                              ),
                            ))),
                  ))),
          // coding the card item
          SizedBox(
            height: size.height * .3,
            child: ListView.builder(
                itemCount: controller.plantList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: null,
                    child: Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Constants.primaryColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(50),
                                ),
                                child:
                                GetBuilder(builder: (RootPageController controller)=>
                                    IconButton(
                                      icon: Icon(
                                        controller.plantList[index].isFavorated == true?
                                        Icons.favorite : Icons.favorite_border,
                                        color: Constants.primaryColor,
                                      ),
                                      iconSize: 30,
                                      onPressed:()=>controller.favouritecallback,
                                    ),
                                )

                              )
                          ),
                          Positioned(
                              top: 50,
                              right: 50,
                              left: 50,
                              bottom: 50,
                              child: Image.asset(
                                  controller.plantList[index].imageURL)),
                          Positioned(
                              bottom: 15,
                              left: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.plantList[index].category,
                                    style: TextStyle(
                                      color: Constants.primaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    controller.plantList[index].plantName,
                                    style: TextStyle(
                                        color: Constants.primaryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                          Positioned(
                              bottom: 15,
                              right: 15,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  r'$' +
                                      controller.plantList[index].price
                                          .toString(),
                                  style: TextStyle(
                                      color:Constants.primaryColor, fontSize: 15),
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                }),
          ),

          Container(
            padding: EdgeInsets.only(left:16,bottom: 20,top: 20),
            child: Text('New plants',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
          ),
          Container(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
            height: size.height*0.5,
            child:ListView.builder(
              itemCount: controller.plantList.length,
                scrollDirection: Axis.vertical,
                physics:BouncingScrollPhysics() ,
                itemBuilder: (BuildContext context , int index){
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
                             child: Image.asset(controller.plantList[index].imageURL),
                           )
                       ),
                       Positioned(
                           bottom: 5,
                           left: 80,
                           child:Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(controller.plantList[index].category),
                               Text(controller.plantList[index].plantName,style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18
                               ),)
                             ],
                           ))
                     ],
                   ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(r'$'+ controller.plantList[index].price.toString(),style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Constants.primaryColor
                        ),),
                      )
                    ],
                  ),
                  
                );
                }

            ) ,
          )
        ],
      ),
    ));
  }
}

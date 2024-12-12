import 'package:flutter/material.dart';

import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:plant_app/app/modules/RootPage/controllers/root_page_controller.dart';
import 'package:plant_app/constants/constant_file.dart';

class ProfilePageView extends GetView<RootPageController> {
  const ProfilePageView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body:  SingleChildScrollView(
        child:
        Container(
          padding: EdgeInsets.all(8),
          width: size.width,
          height: size.height,
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:Border.all(
                    color: Constants.primaryColor.withOpacity(.5),
                    width: 5.0
                  )
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width*.4,
                child: Row(
                  children: [
                    Text(
                      'George Awad',
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                        height: 24,
                        child: Image.asset("assets/images/verified.png")),
                  ],
                ),
              ),
              Text(
                'georgeawad66464@gmail.com',
                style: TextStyle(
                  color: Constants.blackColor.withOpacity(.3),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: size.height*.7,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Profilewidget(
                      icon: Icons.person,
                      title: 'My Profile',
                    ),
                    Profilewidget(
                      icon: Icons.settings,
                      title: 'Settings',
                    ),
                    Profilewidget(
                      icon: Icons.notifications,
                      title: 'Notifications',
                    ),
                    Profilewidget(
                      icon: Icons.chat,
                      title: 'FAQs',
                    ),
                    Profilewidget(
                      icon: Icons.share,
                      title: 'Share',
                    ),
                    Profilewidget(
                      icon: Icons.logout,
                      title: 'Log Out',
                    ),
                  ],
                ),
              )



            ],
          ),
        ),
      )
    );
  }
}

class Profilewidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const Profilewidget({
    super.key,
    required this.icon,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Constants.blackColor.withOpacity(.5),size: 24,),
              SizedBox(
                width: 16,
              ),
              Text(title,style: TextStyle(
                color: Constants.blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),)
            ],
          ),
          Icon(Icons.arrow_forward_ios,color: Constants.blackColor.withOpacity(0.4),size: 16,)
        ],
      ),

=======

import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfilePageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfilePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
>>>>>>> 335b8083f183c971ff06476ad8a2176c8448aaba
    );
  }
}

import 'package:get/get.dart';

class LoginController extends GetxController {



  void signinclicked(){
    Get.toNamed('/root-page');
  }
  void rigesterclicked(){
    Get.toNamed('/signup');
  }
  void resetpassword(){
    Get.toNamed('/resetpassword');
  }
}

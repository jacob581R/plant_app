import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/constant_file.dart';
import '../../../../widgets/customtextfield.dart';
import '../controllers/resetpassword_controller.dart';

class ResetpasswordView extends GetView<ResetpasswordController> {
  const ResetpasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Image.asset('assets/images/reset-password.png'),
      const Text(
        'Reset Password',
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      const CustomTextfield(
        obscureText: false,
        hintText: 'Enter Email',
        icon: Icons.alternate_email,
      ),
      const CustomTextfield(
        obscureText: true,
        hintText: 'Enter new password',
        icon: Icons.lock,
      ),
      SizedBox(height: 8,),
      GestureDetector(
        onTap: null
        ,
        child: Container(
          width: size.width,
          decoration: BoxDecoration(
            color: Constants.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: const Center(
            child: Text(
              'Reset',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ),
    ],
    ),
    )
      )
    );
  }
}

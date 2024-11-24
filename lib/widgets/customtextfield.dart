

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constant_file.dart';

class CustomTextfield extends StatelessWidget{
  final bool obscureText;
  final String hintText;
  final IconData icon;
  const CustomTextfield({super.key, required this.obscureText, required this.hintText, required this.icon});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:obscureText,
      style: TextStyle(
          color: Constants.blackColor
      ),
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(icon,color: Constants.blackColor.withOpacity(0.3),),
          hintText:hintText
      ),
      cursorColor: Constants.blackColor.withOpacity(0.5),
    );
  }

}
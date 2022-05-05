

 import 'package:flutter/material.dart';

import '../contants/constants.dart';

class CustomTextField extends StatelessWidget{

  final String hintText;
  final TextEditingController controller;
  CustomTextField({required this.hintText,required this.controller});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Container(
      width: 130,
      child: new TextField(
        style: new TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.w300,
            color: accentHexColor
        ),
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: new TextStyle(
                fontSize: 42,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w300
            )
        ),

      ),
    );
  }

}
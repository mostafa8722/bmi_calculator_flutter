import 'package:flutter/material.dart';
import '../contants/constants.dart';
import 'components/home_body.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: new Text("BMI Calculator - Flutter",style: TextStyle(color: accentHexColor,fontWeight: FontWeight.w300),),
      ),
      backgroundColor: mainHexColor,
      body: HomeBody(),
    );
  }
}
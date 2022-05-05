

  import 'package:bmi_calculator_flutter/widgets/left_bar.dart';
import 'package:bmi_calculator_flutter/widgets/right_bar.dart';
import 'package:flutter/material.dart';

import '../../contants/constants.dart';
import '../../widgets/custom_text_field.dart';

class HomeBody extends StatefulWidget {

  State<StatefulWidget> createState()=>HomeBodyState();


}

class HomeBodyState extends State<HomeBody> {

  double _bmiResult=0.0;
  String _txtResult="";

  TextEditingController _heightController = new TextEditingController();
  TextEditingController _weightController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(
      child: new Column(
       children: [
         new SizedBox(height: 20,),
         new Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             CustomTextField(hintText: "Height",controller: _heightController,),
             CustomTextField(hintText: "Weight",controller: _weightController,),
           ],
         ),
         new SizedBox(height: 40,),
         new Container(
           height: 45,
           width: 140,
           decoration: new BoxDecoration(
             border: Border.all(width: 1.0,color: accentHexColor),
             borderRadius: BorderRadius.circular(20),

           ),
           child: new GestureDetector(onTap: (){
             double _h = double.parse(_heightController.text);
             double _w = double.parse(_weightController.text);
             setState(() {
               _bmiResult = _w /(_h*_h) ;
               if(_bmiResult > 25)
                 _txtResult = "You\'re over weight";
               else if(_bmiResult >= 18.5 && _bmiResult <=25)
                 _txtResult = "You\'re over weight";
               else
                 _txtResult = "You\'re under weight";

             });
           },
           child: new Center(child: new Text("calculate",style: TextStyle(fontSize: 25,color: accentHexColor),)),
           ),
         ),
         new SizedBox(height: 40,),
      new Container(
        child:new Text(_bmiResult.toStringAsFixed(2),style: TextStyle(fontSize: 20,color: accentHexColor))
        ),
         new SizedBox(height: 20,),
         new Container(
             child:new Text(_txtResult,style: TextStyle(fontSize: 20,color: accentHexColor))
         ),
         new SizedBox(height: 40,),
         LeftBar(barWidth: 20),
         new SizedBox(height: 10,),
         LeftBar(barWidth: 50),
         new SizedBox(height: 10,),
         LeftBar(barWidth: 20),
         new SizedBox(height: 40,),
         RightBar(barWidth: 30),
         new SizedBox(height: 20,),
         RightBar(barWidth: 30),
       ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../contants/constants.dart';

class LeftBar extends StatelessWidget {

  final double barWidth;
  LeftBar({ required this.barWidth});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      new Container(

      height: 25,
      width: barWidth,
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        color: accentHexColor
      ),
    )
      ],
    );
  }
}
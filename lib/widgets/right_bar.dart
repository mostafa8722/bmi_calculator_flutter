
import 'package:flutter/material.dart';

import '../contants/constants.dart';

class RightBar extends StatelessWidget {

  final double barWidth;
  RightBar({ required this.barWidth});
  @override
  Widget build(BuildContext context) {

    return new Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        new Container(

          height: 25,
          width: barWidth,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: accentHexColor
          ),
        )
      ],
    );
  }
}
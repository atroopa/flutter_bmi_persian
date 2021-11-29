import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

class RightBart extends StatelessWidget {
  double barWidth2;
  
  RightBart(this.barWidth2);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)
            ),
          color: accentHexColor,
          ),
        ),
      ],
    );
  }
}
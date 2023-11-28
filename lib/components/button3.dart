import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'constants.dart';

class ButtonThree extends StatelessWidget {
  String name;
  Color color, backcolor;
  double? w, h, fontSize;
  VoidCallback? onTap;

  ButtonThree(
      {required this.name,
      required this.color,
      required this.backcolor,
      required this.w,
      required this.h,
      this.fontSize = 16,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: backcolor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: color,
                fontSize: fontSize,
                fontFamily: Constants.secondaryFont,
                decoration: TextDecoration.none),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}

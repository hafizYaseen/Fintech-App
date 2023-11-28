import 'package:flutter/material.dart';

import 'constants.dart';

class ContainerBox extends StatelessWidget {
  String text;
  Color color, backColor;
  IconData? icon1, icon2;
  double h, w;
  Widget? move;
  ContainerBox(
      {required this.text,
      required this.backColor,
      required this.color,
      required this.h,
      required this.w,
      this.icon1,
      this.icon2,
        this.move
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: backColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Icon(
                icon1,
                color: Constants.tertiaryColor,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => move!));
              },
            ),
            Text(
              text,
              style: TextStyle(
                  color: color,
                  fontFamily: Constants.primaryFont,
                  fontSize: Constants.largeFontSize),
            ),
            Icon(icon2, color: Constants.tertiaryColor),
          ],
        ),
      ),
    );
  }
}

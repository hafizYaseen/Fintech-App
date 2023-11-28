import 'package:flutter/material.dart';

import 'constants.dart';

class NotificationsContainer2 extends StatelessWidget {
  String text1, text2, text3, text5;
  String text4;
  Color backColor, icon1color, container2color, text2color;
  IconData? icon1;
  double h, w;
  NotificationsContainer2({
    required this.text1,
    required this.backColor,
    required this.icon1color,
    required this.h,
    required this.w,
    required this.icon1,
    required this.text2,
    required this.container2color,
    required this.text2color,
    required this.text3,
    required this.text4,
    required this.text5,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: h,
          width: w,
          decoration: BoxDecoration(
              color: backColor,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        icon1,
                        color: icon1color,
                        size: 35,
                      ),
                    ),
                    Text(
                      text1,
                      style: TextStyle(
                          color: Constants.primaryColor,
                          fontSize: Constants.largeFontSize,
                          fontFamily: Constants.primaryFont),
                    ),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text3,
                        style: TextStyle(
                            color: Constants.secondaryColor,
                            fontFamily: Constants.tertiaryFont,
                            fontSize: Constants.smallFontSize),
                      ),
                      Text(text4,
                      style: TextStyle(
                        fontSize: Constants.smallFontSize,
                        fontFamily: Constants.primaryFont,
                        color: Constants.primaryColor
                      ),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text5,
                        style: TextStyle(
                            color: Constants.secondaryColor,
                            fontFamily: Constants.tertiaryFont,
                            fontSize: Constants.smallFontSize),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        height: 25,
                        child: Text(
                          text2,
                          style: TextStyle(
                            color: text2color,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: container2color,
                            borderRadius: BorderRadius.circular(20)
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

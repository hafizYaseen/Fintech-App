import 'package:flutter/material.dart';
import 'constants.dart';

class ButtonWithIcon extends StatelessWidget {

  String name;
  Color? color, backcolor, iconColor;
  double w,h;
  IconData? icon;

  ButtonWithIcon({required this.name, required this.color, required this.backcolor, required this.w, required this.h, this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: backcolor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor,),
            SizedBox(
              width: 10,),
            Text(name, style: TextStyle(
              color: color,
              fontSize: 16,
              fontFamily: 'OpenSans SemiBold',
            ),
              textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}

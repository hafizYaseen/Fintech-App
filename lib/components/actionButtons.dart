import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class ActionButtons extends StatelessWidget {

  IconData icon;
  String text;
  Color iconColor;
  double iconSize;
  VoidCallback? onTap;

  ActionButtons({required this.text, required this.icon, required this.iconColor, this.iconSize = 30, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
            color: Constants.tertiaryColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon,
              size: iconSize,
              color: iconColor,),
            Text(text,
              style: TextStyle(
                  fontFamily: Constants.secondaryFont,
                  color: Constants.primaryColor,
                  fontSize: Constants.mediumFontSize
              ),
            textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}

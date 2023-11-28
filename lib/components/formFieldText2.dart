import 'dart:ffi';

import 'package:fast_pay/screenFourteen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

class FormFieldText2 extends StatelessWidget {
  double? w, h;
  int length;
  TextInputType textInputType;
  bool flag;
  String hintText;
  Color? backColor, textColor, iconColor, cursorColor, enableBorderColor;
  IconData? icon, suffixIcon;
  final VoidCallback? onTap;
  String? prefixText;

  FormFieldText2(
      {required this.h,
        this.w = double.infinity,
      required this.length,
      required this.textInputType,
      required this.flag,
      required this.hintText,
      required this.backColor,
        required this.textColor,
        this.iconColor = Constants.tertiaryColor,
        this.cursorColor = Constants.tertiaryColor,
      this.icon,
      this.onTap,
        this.suffixIcon,
        this.enableBorderColor = Constants.tertiaryColor,
        this.prefixText
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
      child: TextField(
        inputFormatters: [LengthLimitingTextInputFormatter(length)],
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
          ),
          prefixText: prefixText,
          prefixStyle: TextStyle(
              fontSize: Constants.largeFontSize,
              fontFamily: Constants.tertiaryFont,
              color: textColor
          ),
          suffixIcon: Icon(suffixIcon, color: iconColor,),
          iconColor: iconColor,
          //contentPadding: EdgeInsets.only(right: 200),
          hintStyle: TextStyle(
            fontSize: Constants.mediumFontSize,
            fontFamily: Constants.tertiaryFont,
            color: Constants.secondaryColor,
          ),
          fillColor: backColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: enableBorderColor!),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Constants.primaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onTap: onTap,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.start,
        keyboardType: textInputType,
        cursorColor: cursorColor,
        obscureText: flag,
        style: TextStyle(
            fontSize: Constants.largeFontSize,
            fontFamily: Constants.tertiaryFont,
            color: textColor),
      ),
    );
  }
}

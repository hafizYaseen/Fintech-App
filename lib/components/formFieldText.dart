import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

class FormFieldText extends StatelessWidget {
  double w, h;
  int length;
  TextInputType textInputType;
  bool flag;
  String hintText;
  Color backColor;

  FormFieldText({required this.h, required this.w, required this.length,required this.textInputType, required this.flag, required this.hintText, required this.backColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
      child: TextFormField(
        keyboardType: textInputType,
        cursorColor: Constants.primaryColor,
        textAlign: TextAlign.center,
        obscureText: flag,
        cursorHeight: 30,
        style: TextStyle(
          fontSize: Constants.largeFontSize,
          fontFamily: Constants.tertiaryFont,
        ),
        inputFormatters: [LengthLimitingTextInputFormatter(length)],
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: Constants.mediumFontSize,
            fontFamily: Constants.tertiaryFont,
            color: Constants.secondaryColor,
          ),
          fillColor: backColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Constants.tertiaryColor),
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

      ),
    );
  }
}

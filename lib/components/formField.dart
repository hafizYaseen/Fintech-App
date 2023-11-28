import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

class FormFieldNumber extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: TextFormField(
        onChanged: (value){
          if(value.length==1){
            FocusScope.of(context).nextFocus();
          }else{
            FocusScope.of(context).previousFocus();
          }
        },
        keyboardType: TextInputType.number,
        cursorColor: Constants.primaryColor,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontFamily: Constants.tertiaryFont,
        ),
        inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          fillColor: Constants.tertiaryColor,
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


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'constants.dart';

class CountryCodePicker extends StatefulWidget {
  const CountryCodePicker({super.key});

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.center,
            child: IntlPhoneField(
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              textAlign: TextAlign.left,
              initialCountryCode: 'PK',
              showDropdownIcon: true,
              disableLengthCheck: true,
              keyboardType: TextInputType.phone,
              dropdownIconPosition: IconPosition.values[1],
              dropdownIcon: Icon(CupertinoIcons.person,
                color: Constants.primaryColor,),
              style: TextStyle(
                fontFamily: Constants.tertiaryFont,
                fontSize: Constants.largeFontSize
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                ),
                labelText: ' 1727223242',
                labelStyle: TextStyle(
                  fontSize: Constants.largeFontSize,
                  fontFamily: Constants.tertiaryFont,
                  color: Constants.secondaryColor,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              dropdownTextStyle: TextStyle(
                fontSize: 18,
                fontFamily: Constants.tertiaryFont
              ),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),


            ),
          ),
        ),
      ),
    );
  }
}

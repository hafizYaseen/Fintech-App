import 'dart:ui';

import 'package:fast_pay/screenThree.dart';
import 'package:fast_pay/screenTwo.dart';
import 'package:flutter/material.dart';

import 'components/button1.dart';
import 'components/button2.dart';
import 'components/button3.dart';
import 'components/constants.dart';
import 'components/countryCodePicker.dart';

class ScreenSix extends StatefulWidget {

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {

  Future<void> _showDialog(BuildContext context) async{
    await showDialog(context: context, builder: (BuildContext context){
      return Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.blueAccent.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 250),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                                child: Text('Login with phone number:',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: Constants.mediumFontSize,
                                    fontFamily: Constants.tertiaryFont,
                                    color: Constants.secondaryColor,

                                  ),
                                  textAlign: TextAlign.center,)),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Text('24234-2434-544',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: Constants.largeFontSize,
                                  fontFamily: Constants.secondaryFont,
                                  color: Constants.primaryColor,

                                ),
                                textAlign: TextAlign.center,),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                                child: Text('We will send the verification code to\nthe phone number you entered.\nDo you want to continue?',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: Constants.mediumFontSize,
                                    fontFamily: Constants.tertiaryFont,
                                    color: Constants.secondaryColor,

                                  ),
                                  textAlign: TextAlign.center,)),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(child: ButtonTwo(name: 'BACK'),
                                    onTap: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                                    },),
                                  GestureDetector(child: ButtonOne(name: 'NEXT'),
                                    onTap: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenThree()));
                                    },),
                                ],
                              ),
                            )

                          ],
                        )
                    ),
                  ),
                ),
              ),
            )
          ],
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Center(
            child: Text(
              'Enter your phone number',
              style: TextStyle(
                fontFamily: Constants.primaryFont,
                fontSize: 20,
                color: Constants.primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'The quick brown fox jumps over a lazy\n dog. djs flock by',
              style: TextStyle(
                color: Constants.secondaryColor,
                fontSize: Constants.mediumFontSize,
                fontFamily: Constants.secondaryFont,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CountryCodePicker(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child: ButtonThree(
                      name: 'NEXT',
                      color: Constants.tertiaryColor,
                      backcolor: Constants.secondaryColor,
                      w: 120,
                      h: 50),
                  onTap: (){
                    _showDialog(context);
                  },
                )
            ),
          ),

        ],
      ),

    );
  }
}

import 'dart:ui';

import 'package:fast_pay/components/button3.dart';
import 'package:fast_pay/components/formFieldText.dart';
import 'package:fast_pay/screenNine.dart';
import 'package:fast_pay/screenSeven.dart';
import 'package:fast_pay/screenThree.dart';
import 'package:flutter/material.dart';
import 'components/button1.dart';
import 'components/button2.dart';
import 'components/constants.dart';

class ScreenEight extends StatefulWidget {

  @override
  State<ScreenEight> createState() => _ScreenEightState();
}

class _ScreenEightState extends State<ScreenEight> {

  Future<void> _showDialog(BuildContext context)async{
    await showDialog(context: context, builder: (BuildContext context){
      return Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.blueAccent.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 280),
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
                              child: Text('Password reset email sent',
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
                              child: Text('Lorem ipsum dolor sit amet,\nadipiscing elit, sed do eiusmod\nincididunt ut labore et',
                                style: TextStyle(
                                    fontFamily: Constants.tertiaryFont,
                                    fontSize: Constants.mediumFontSize,
                                    color: Constants.secondaryColor,
                                    decoration: TextDecoration.none
                                ),
                                textAlign: TextAlign.center,),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(child: ButtonOne(name: 'CANCEL'),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenEight()));
                              },),

                          ],
                        )
                    ),
                  ),
                ),
              ),
            )
          ]
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_back_ios_new,
                        color: Constants.primaryColor),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenSeven()));
                    },
                  ),
                  Text('Forgot Password',
                  style: TextStyle(
                    fontFamily: Constants.secondaryFont,
                    fontSize: Constants.largeFontSize,
                    color: Constants.primaryColor
                  ),),
                  InkWell(
                    child: Icon(Icons.info_outline,
                        color: Constants.primaryColor),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenNine()));
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua',
            style: TextStyle(
              fontFamily: Constants.tertiaryFont,
              fontSize: Constants.mediumFontSize,
              color: Constants.secondaryColor
            ),
            textAlign: TextAlign.center,),
            SizedBox(
              height: 70,
            ),
            FormFieldText(h: 50, w: 350, length: 13, textInputType: TextInputType.number, flag: false, hintText: 'Your ID number', backColor: Constants.tertiaryColor,),
            SizedBox(
              height: 20,
            ),
            FormFieldText(h: 50, w: 350, length: 30, textInputType: TextInputType.emailAddress, flag: false, hintText: 'Your email', backColor: Constants.tertiaryColor),
            SizedBox(
              height: 20,
            ),
            Text('Suggestions : asdadf@gmail.com',
              style: TextStyle(
                fontFamily: Constants.secondaryFont,
                color: Constants.secondaryColor,
                fontSize: Constants.mediumFontSize
            ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(child: ButtonThree(name: 'Sent', color: Constants.tertiaryColor, backcolor: Constants.secondaryColor, w: 330, h: 50),
            onTap: (){
              _showDialog(context);
            },)

          ],
        ),
      ),

    );
  }
}

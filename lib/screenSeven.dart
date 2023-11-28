import 'dart:ui';

import 'package:fast_pay/components/customNavigationBar.dart';
import 'package:fast_pay/components/iconButton.dart';
import 'package:fast_pay/screenEight.dart';
import 'package:fast_pay/screenFive.dart';
import 'package:fast_pay/screenThree.dart';
import 'package:fast_pay/screenTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'components/button1.dart';
import 'components/button2.dart';
import 'components/button3.dart';
import 'components/constants.dart';
import 'components/formFieldText.dart';

class ScreenSeven extends StatefulWidget {


  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}

class _ScreenSevenState extends State<ScreenSeven> {

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
                            Icon(Icons.fingerprint, size: 70, color: Constants.primaryColor,),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text('Finger print for APay',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: Constants.largeFontSize,
                                  fontFamily: Constants.secondaryFont,
                                  color: Constants.primaryColor,

                                ),
                                textAlign: TextAlign.center,),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Text('Use your finger print to login',
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
                            GestureDetector(
                                child: ButtonThree(
                                    name: 'CANCEL', color:
                                Constants.tertiaryColor,
                                    backcolor: Constants.primaryColor,
                                    w: 150,
                                    h: 50),
                              onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenSeven()));
                              },
                            )
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
  Future<void> _showDialog1(BuildContext context) async{
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
                            Icon(Icons.crop_square, size: 70, color: Constants.primaryColor,),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text('Face ID for APay',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: Constants.largeFontSize,
                                  fontFamily: Constants.secondaryFont,
                                  color: Constants.primaryColor,

                                ),
                                textAlign: TextAlign.center,),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Text('Use your face ID to login',
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
                            GestureDetector(
                                child: ButtonThree(
                                    name: 'CANCEL',
                                    color: Constants.tertiaryColor,
                                    backcolor: Constants.primaryColor,
                                    w: 150,
                                    h: 50),
                            onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenSeven()));
                            },)

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
  Future<void> _showDialog2(BuildContext context) async{
    await showDialog(context: context, builder: (BuildContext context){
      return Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.blueAccent.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 300),
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
                              child: Text('Are you sure you want to\n Sign out?',
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
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(child: ButtonTwo(name: 'CANCEL'),
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenSeven()));
                                    },),
                                  GestureDetector(child: ButtonOne(name: 'SURE'),
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenSeven()));
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
          ]
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
              ),
              Center(
                child: Text(
                  'Welcome',
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
                  'Yaseen Ejaz\n(2342-2334-876)',
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
              FormFieldText(
                h: 50,
                w: 350,
                length: 6,
                textInputType: TextInputType.phone,
                flag: true,
                hintText: 'Enter your password',
                  backColor: Constants.tertiaryColor
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                child: ButtonThree(
                    name: 'LOGIN',
                    color: Constants.tertiaryColor,
                    backcolor: Constants.secondaryColor,
                    w: 330,
                    h: 50),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CustomNavigationBar()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: ButtonWithIcon(
                  name: 'LOGIN WITH FINGER PRINT',
                  color: Constants.tertiaryColor,
                  backcolor: Constants.primaryColor,
                  w: 330,
                  h: 50,
                  icon: Icons.fingerprint,
                  iconColor: Constants.tertiaryColor,
                ),
                onTap: (){
                  _showDialog(context);
                },
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: ButtonWithIcon(
                  name: 'LOGIN WITH FACE ID',
                  color: Constants.tertiaryColor,
                  backcolor: Constants.primaryColor,
                  w: 330,
                  h: 50,
                  icon: Icons.crop_square,
                  iconColor: Constants.tertiaryColor,
                ),
                onTap: (){
                  _showDialog1(context);
                },
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                child: Text('Forgot Password ?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: Constants.tertiaryFont,
                    fontSize: Constants.mediumFontSize,
                  ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenEight()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text('Sign out',
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: Constants.tertiaryFont,
                      fontSize: Constants.mediumFontSize,
                      decoration: TextDecoration.underline
                  ),),
                onTap: (){
                  _showDialog2(context);
                },
              ),
            ],
          ),
        ));
  }
}

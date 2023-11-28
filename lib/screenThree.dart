import 'dart:ui';

import 'package:fast_pay/components/button3.dart';
import 'package:fast_pay/components/formField.dart';
import 'package:fast_pay/screenFour.dart';
import 'package:fast_pay/screenTwo.dart';
import 'package:flutter/material.dart';
import 'components/button1.dart';
import 'components/button2.dart';
import 'components/constants.dart';

class ScreenThree extends StatefulWidget {


  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  bool flag = false;
  @override

  Future<void> _showDialog(BuildContext context) async{
    await showDialog(
      context: context,
      builder: (BuildContext context){
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
                              child: Text("Didn't you recieve\nverification code?!\n",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: Constants.largeFontSize,
                                  fontFamily: Constants.secondaryFont,
                                  color: Constants.primaryColor,

                                ),
                                textAlign: TextAlign.center,),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Text('We call 12342453 to read your\nverification code',
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
                                  GestureDetector(child: ButtonTwo(name: 'CLOSE'),
                                    onTap: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenThree()));
                                    },),
                                  GestureDetector(child: ButtonOne(name: 'CALL'),
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
          ]
          ,
        );
      }
    );
  }
  Future<void> _showDialog1(BuildContext context) async{
    await showDialog(
        context: context,
        builder: (BuildContext context){
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
                                child: Text('Are you sure you want\nsignup with another\nphone number ?',
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
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenThree()));
                                      },),
                                    GestureDetector(child: ButtonOne(name: 'YES'),
                                      onTap: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
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
            ,
          );
        }
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 90,
          ),
          Center(
            child: Text(
              'Enter verification code',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FormFieldNumber(),
                FormFieldNumber(),
                FormFieldNumber(),
                FormFieldNumber(),
                FormFieldNumber(),
                FormFieldNumber(),

              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.topRight,
                child: InkWell(child: ButtonThree(
                    name: 'NEXT',
                    color: Constants.tertiaryColor,
                    backcolor: Constants.secondaryColor,
                    w: 120,
                    h: 50),
                  onTap: (){
                  Navigator.push
                    (context, MaterialPageRoute(builder: (context) => ScreenFour()));
                  },
                ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Text('Send code again',
                style: TextStyle(
                  fontFamily: Constants.tertiaryFont,
                  color: Colors.blue.shade200
                ),),
                onTap: (){
                  _showDialog(context);
                },
              ),
              Text(' (54)',
              style: TextStyle(
                  fontFamily: Constants.tertiaryFont,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Text('Change Phone Number',
            style: TextStyle(
              color: Colors.blue,
              fontFamily: Constants.secondaryFont,
              decoration: TextDecoration.underline,
              )
            ),
            onTap: (){
              _showDialog1(context);
            },
          ),
        ],
      ),
    );
  }
}


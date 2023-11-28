import 'dart:ui';

import 'package:fast_pay/components/button3.dart';
import 'package:fast_pay/screenSixteen.dart';
import 'package:fast_pay/screenThree.dart';
import 'package:fast_pay/screenTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'components/button1.dart';
import 'components/button2.dart';
import 'components/constants.dart';
import 'components/containerBox.dart';
import 'components/customNavigationBar.dart';
import 'components/formFieldText2.dart';

class ScreenSeventeen extends StatefulWidget {
  const ScreenSeventeen({super.key});

  @override
  State<ScreenSeventeen> createState() => _ScreenSeventeenState();
}

class _ScreenSeventeenState extends State<ScreenSeventeen> {


  Future<void> _showDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return Stack(
            children: [
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.blueAccent.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 400, bottom: 150),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Choose the Bank',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: Constants.largeFontSize,
                                      fontFamily: Constants.secondaryFont,
                                      color: Constants.primaryColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.money_euro_circle,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Bank A',
                                            style: TextStyle(
                                                fontFamily:
                                                    Constants.secondaryFont,
                                                fontSize:
                                                    Constants.mediumFontSize,
                                                color: Constants.primaryColor,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                          Text(
                                            'Free Recharge',
                                            style: TextStyle(
                                                fontFamily:
                                                    Constants.tertiaryFont,
                                                fontSize: 10,
                                                color:
                                                    Constants.secondaryColor,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 175,
                                      ),
                                      Icon(
                                        Icons.done_rounded,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(CupertinoIcons
                                        .money_dollar_circle_fill),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bank B',
                                          style: TextStyle(
                                              fontFamily:
                                                  Constants.secondaryFont,
                                              fontSize:
                                                  Constants.mediumFontSize,
                                              color: Constants.primaryColor,
                                              decoration:
                                                  TextDecoration.none),
                                        ),
                                        Text(
                                          'Free Recharge',
                                          style: TextStyle(
                                              fontFamily:
                                                  Constants.tertiaryFont,
                                              fontSize: 10,
                                              color:
                                                  Constants.secondaryColor,
                                              decoration:
                                                  TextDecoration.none),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(CupertinoIcons.money_rubl),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bank C',
                                          style: TextStyle(
                                              fontFamily:
                                                  Constants.secondaryFont,
                                              fontSize:
                                                  Constants.mediumFontSize,
                                              color: Constants.primaryColor,
                                              decoration:
                                                  TextDecoration.none),
                                        ),
                                        Text(
                                          'Free Recharge',
                                          style: TextStyle(
                                              fontFamily:
                                                  Constants.tertiaryFont,
                                              fontSize: 10,
                                              color:
                                                  Constants.secondaryColor,
                                              decoration:
                                                  TextDecoration.none),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: ButtonThree(
                        name: 'CANCEL',
                        color: Constants.tertiaryColor,
                        backcolor: Constants.primaryColor,
                        w: 330,
                        h: 50),
                  ),
                ),
              )
            ],
          );
        });
  }
  // Future<void> _showDialog1(BuildContext context) async {
  //   await showDialog(context: context, builder: (BuildContext context) {
  //     return Column(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(
  //               left: 20, right: 20, top: 300, bottom: 150),
  //         ),
  //         ButtonThree(
  //             name: 'CANCEL',
  //             color: Constants.tertiaryColor,
  //             backcolor: Constants.primaryColor,
  //             w: 330,
  //             h: 50)
  //       ],
  //     );
  //   });
  // }



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Constants.backColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Constants.primaryColor,
          leading: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    PageTransition(child: CustomNavigationBar(), type: PageTransitionType.fade));
              },
              child: Icon(Icons.arrow_back_ios)),
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(vertical: 16.0),
            indicatorPadding: EdgeInsets.only(top: 16.0),
            indicatorColor: Constants.tertiaryColor,
            tabs: [
              Text(
                'To the Linked Banks',
                style: TextStyle(
                    fontFamily: Constants.tertiaryFont,
                    fontSize: Constants.smallFontSize,
                    color: Constants.tertiaryColor),
              ),
              Text(
                'At the place',
                style: TextStyle(
                    fontFamily: Constants.tertiaryFont,
                    fontSize: Constants.smallFontSize,
                    color: Constants.tertiaryColor),
              )
            ],
          ),
          title: Text(
            'Withdrawal',
            style: TextStyle(
                fontFamily: Constants.primaryFont,
                fontSize: Constants.largeFontSize,
                color: Constants.tertiaryColor),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Balance in the Wallet:',
                          style: TextStyle(
                              fontSize: Constants.mediumFontSize,
                              fontFamily: Constants.primaryFont,
                              color: Constants.primaryColor),
                        ),
                        Text(
                          '\$ 170.000',
                          style: TextStyle(
                              fontSize: Constants.mediumFontSize,
                              fontFamily: Constants.primaryFont,
                              color: Constants.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: FormFieldText2(
                      h: 50,
                      w: 500,
                      length: 10,
                      textInputType: TextInputType.number,
                      flag: false,
                      hintText: '\$  Enter the Amount',
                      backColor: Constants.tertiaryColor,
                      textColor: Constants.primaryColor,
                      cursorColor: Constants.primaryColor,
                      // onTap: (){
                      //   _showDialog1(context);
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Withdraw to the Linked Bank',
                      style: TextStyle(
                          fontSize: Constants.mediumFontSize,
                          fontFamily: Constants.primaryFont,
                          color: Constants.primaryColor),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.money_euro_circle,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bank A',
                              style: TextStyle(
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize,
                                  color: Constants.primaryColor),
                            ),
                            Text(
                              'Free Recharge',
                              style: TextStyle(
                                  fontFamily: Constants.tertiaryFont,
                                  fontSize: 10,
                                  color: Constants.secondaryColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 155,
                        ),
                        GestureDetector(
                          child: Text(
                            'Change',
                            style: TextStyle(
                                fontFamily: Constants.tertiaryFont,
                                fontSize: Constants.smallFontSize,
                                color: Colors.blue),
                          ),
                          onTap: () {
                            _showDialog(context);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore\net dolore magna aliqua.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Constants.secondaryColor,
                            fontFamily: Constants.tertiaryFont,
                            fontSize: Constants.smallFontSize),
                      )),
                ],
              ),
            ),
            Text('asfadf')
          ],
        ),
      ),
    );
  }
}

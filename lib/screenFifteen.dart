import 'package:fast_pay/components/customNavigationBar.dart';
import 'package:fast_pay/screenEleven.dart';
import 'package:fast_pay/screenTen.dart';
import 'package:fast_pay/screenThirteen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'components/actionButtons.dart';
import 'components/constants.dart';
import 'components/formFieldText2.dart';

class ScreenFifteen extends StatefulWidget {
  const ScreenFifteen({super.key});

  @override
  State<ScreenFifteen> createState() => _ScreenFifteenState();
}

class _ScreenFifteenState extends State<ScreenFifteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: Container(
              padding: EdgeInsets.only(top: 40),
              height: 120,
              decoration: BoxDecoration(color: Constants.primaryColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FormFieldText2(
                        h: 40,
                        w: 280,
                        length: 300,
                        textInputType: TextInputType.text,
                        flag: false,
                        backColor: Constants.primaryColor,
                        textColor: Constants.tertiaryColor,
                        icon: FontAwesomeIcons.magnifyingGlass,
                        hintText: '',
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Icon(
                          Icons.close,
                          color: Constants.tertiaryColor,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(child: CustomNavigationBar(), type: PageTransitionType.fade));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.arrow_up_arrow_down),
                            SizedBox(width: 20,),
                            Text('Transfer',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.money_dollar,color: Colors.blue.shade600),
                            SizedBox(width: 20,),
                            Text('Request Money Transfer',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.gift, color: Colors.red),
                            SizedBox(width: 20,),
                            Text('Give Gifts',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(Icons.fastfood, color: Colors.orange.shade400),
                            SizedBox(width: 20,),
                            Text('Order Food Online',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.moneyBills, color: Colors.blueAccent),
                            SizedBox(width: 20,),
                            Text('Pay Bills',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(Icons.movie_outlined, color: Colors.redAccent),
                            SizedBox(width: 20,),
                            Text('Buy Movie Tickets',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.plane, color: Colors.redAccent.shade200),
                            SizedBox(width: 20,),
                            Text('Airfare',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.bolt, color: Colors.blue),
                            SizedBox(width: 20,),
                            Text('Electricity Payment',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.coins, color: Colors.orangeAccent),
                            SizedBox(width: 20,),
                            Text('Consumer Loans',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.droplet, color: Colors.blue.shade400),
                            SizedBox(width: 20,),
                            Text('Water Payments',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.userGroup, color: Colors.blue.shade300),
                            SizedBox(width: 20,),
                            Text('Manage Group of Friends',
                              style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontFamily: Constants.secondaryFont,
                                  fontSize: Constants.mediumFontSize
                              ),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

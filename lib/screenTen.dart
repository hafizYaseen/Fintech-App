import 'package:fast_pay/components/actionButtons.dart';
import 'package:fast_pay/components/customNavigationBar.dart';
import 'package:fast_pay/components/formFieldText.dart';
import 'package:fast_pay/components/formFieldText2.dart';
import 'package:fast_pay/components/salesBanner.dart';
import 'package:fast_pay/screenEight.dart';
import 'package:fast_pay/screenEighteen.dart';
import 'package:fast_pay/screenEleven.dart';
import 'package:fast_pay/screenFifteen.dart';
import 'package:fast_pay/screenFive.dart';
import 'package:fast_pay/screenFourteen.dart';
import 'package:fast_pay/screenOne.dart';
import 'package:fast_pay/screenSeven.dart';
import 'package:fast_pay/screenSeventeen.dart';
import 'package:fast_pay/screenSix.dart';
import 'package:fast_pay/screenSixteen.dart';
import 'package:fast_pay/screenTwentyFive.dart';
import 'package:fast_pay/screenTwentyFour.dart';
import 'package:fast_pay/screenTwentyTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'components/constants.dart';

class ScreenTen extends StatefulWidget {
  const ScreenTen({super.key});

  @override
  State<ScreenTen> createState() => _ScreenTenState();
}
class _ScreenTenState extends State<ScreenTen> {
  ScrollController _scrollController = ScrollController();
  double cardHeight = 170; // Initial height of the Card
  bool flag = false;
  double scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        // Calculate the new height of the Card based on the scroll offset
        double newHeight = 170.0 - _scrollController.offset;
        if (newHeight < 50) {
          newHeight = 50.0; // Minimum height for the Card
        }
        setState(() {
          cardHeight = newHeight;
          flag = _scrollController.position.userScrollDirection == ScrollDirection.forward;
        }
        );
        if (_scrollController.offset <= 0) {
          // Reset the state to its initial values
          setState(() {
            cardHeight = 170;
            flag = false;
            scrollOffset = _scrollController.offset;
          });
        }
        // if (_scrollController.offset == 0) {
        //   setState(() {
        //     cardHeight = 120.0;
        //     flag = false;
        //   });
        // }
      });
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.backColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: 150,
                    decoration: BoxDecoration(color: Constants.primaryColor),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FormFieldText2(
                              h: 40,
                              w: 280,
                              length: 300,
                              textInputType: TextInputType.text,
                              flag: false,
                              hintText: 'Search',
                              backColor: Constants.primaryColor,
                              textColor: Constants.tertiaryColor,
                              icon: FontAwesomeIcons.magnifyingGlass,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: ScreenFourteen(),
                                        type: PageTransitionType.fade));
                              },
                            ),
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              child: Icon(
                                CupertinoIcons.bell,
                                color: Constants.tertiaryColor,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: ScreenEleven(),
                                        type: PageTransitionType.fade));
                              },
                            ),
                            Icon(
                              FontAwesomeIcons.powerOff,
                              color: Constants.tertiaryColor,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.transparent
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 120,
                    right: 0,
                    left: 0,
                    child: Container(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        controller: _scrollController,
                        child: Column(
                          children: [
                            AnimatedContainer(
                              duration: Duration(milliseconds: 100),
                              height: cardHeight ,
                              // onEnd: (){
                              //   setState(() {
                              //     cardHeight = flag ? 50.0 : 170.0;
                              //   });
                              // },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: GestureDetector(
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    child: Column(
                                      children: [
                                        flag == false ? SizedBox(
                                          height: 30,
                                        ):SizedBox.shrink(),
                                        flag == false ? Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                InkWell(
                                                  child: Icon(
                                                    FontAwesomeIcons.wallet,
                                                    color: Constants.primaryColor,
                                                    size: 30,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        PageTransition(
                                                            child: ScreenSixteen(),
                                                            type: PageTransitionType
                                                                .fade));
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Deposit',
                                                  style: TextStyle(
                                                      fontSize:
                                                      Constants.mediumFontSize,
                                                      color: Constants.primaryColor,
                                                      fontFamily:
                                                      Constants.secondaryFont),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                GestureDetector(
                                                  child: Icon(
                                                    CupertinoIcons
                                                        .arrow_up_arrow_down,
                                                    color: Colors.green.shade300,
                                                    size: 30,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        PageTransition(
                                                            child: ScreenSeventeen(),
                                                            type: PageTransitionType
                                                                .fade));
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Withdrawal',
                                                  style: TextStyle(
                                                      fontSize:
                                                      Constants.mediumFontSize,
                                                      color: Constants.primaryColor,
                                                      fontFamily:
                                                      Constants.secondaryFont),
                                                  textAlign: TextAlign.center,
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.qrcode,
                                                  color: Colors.redAccent.shade200,
                                                  size: 30,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Pay Code',
                                                  style: TextStyle(
                                                      fontSize:
                                                      Constants.mediumFontSize,
                                                      color: Constants.primaryColor,
                                                      fontFamily:
                                                      Constants.secondaryFont),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.barcode,
                                                  color: Colors.purple.shade400,
                                                  size: 30,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Scan Code',
                                                  style: TextStyle(
                                                      fontSize:
                                                      Constants.mediumFontSize,
                                                      color: Constants.primaryColor,
                                                      fontFamily:
                                                      Constants.secondaryFont),
                                                )
                                              ],
                                            )
                                          ],
                                        ):SizedBox.shrink(),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Balance in the wallet',
                                              style: TextStyle(
                                                  fontSize: Constants.mediumFontSize,
                                                  color: Constants.primaryColor,
                                                  fontFamily:
                                                  Constants.secondaryFont),
                                            ),
                                            Icon(
                                              FontAwesomeIcons.solidEye,
                                              color: Constants.primaryColor,
                                              size: 20,
                                            ),
                                            Text(
                                              '\$ 40.000',
                                              style: TextStyle(
                                                  fontSize: Constants.mediumFontSize,
                                                  color: Constants.primaryColor,
                                                  fontFamily:
                                                  Constants.secondaryFont),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ActionButtons(
                                    text: 'Transfer',
                                    icon: CupertinoIcons.arrow_up_arrow_down,
                                    iconColor: Constants.primaryColor,
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: ScreenEighteen(),
                                              type: PageTransitionType.fade));
                                    },
                                  ),
                                  ActionButtons(
                                    text: 'Request Money',
                                    icon: CupertinoIcons.money_dollar,
                                    iconColor: Colors.blue.shade600,
                                    iconSize: 40,
                                  ),
                                  GestureDetector(
                                      child: ActionButtons(
                                          text: 'Manage Friends',
                                          icon: FontAwesomeIcons.userGroup,
                                          iconColor: Colors.blue.shade300),
                                      onTap: (){
                                        Navigator.push(context, PageTransition(child: ScreenTwentyTwo(), type: PageTransitionType.fade));
                                      }
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ActionButtons(
                                    text: 'Order Food',
                                    icon: Icons.fastfood,
                                    iconColor: Colors.orange.shade400,
                                    iconSize: 40,
                                  ),
                                  ActionButtons(
                                    text: 'Give Gifts',
                                    icon: CupertinoIcons.gift,
                                    iconColor: Colors.red,
                                    iconSize: 40,
                                  ),
                                  ActionButtons(
                                    text: 'Pay Bills',
                                    icon: FontAwesomeIcons.moneyBills,
                                    iconColor: Colors.blueAccent,
                                    onTap: (){
                                      Navigator.push(context, PageTransition(child: ScreenTwentyFour(), type: PageTransitionType.fade));
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ActionButtons(
                                    text: 'Buy Movie Tickets',
                                    icon: Icons.movie_outlined,
                                    iconColor: Colors.redAccent,
                                  ),
                                  ActionButtons(
                                    text: 'Consumer Loans',
                                    icon: FontAwesomeIcons.coins,
                                    iconColor: Colors.orangeAccent,
                                  ),
                                  ActionButtons(
                                    text: 'All Services',
                                    icon: FontAwesomeIcons.ellipsis,
                                    iconColor: Colors.blue,
                                    onTap: (){
                                      Navigator.push(context, PageTransition(child: ScreenFifteen(), type: PageTransitionType.fade));
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SalesBanner(
                                      image: 'assets/images/screenTenImage1.jpg',
                                      text: 'Sales OFF 30%'),
                                  SalesBanner(
                                      image: 'assets/images/screenTenImage2.jpg',
                                      text: 'Sales OFF 40%'),
                                  SalesBanner(
                                      image: 'assets/images/screenTenImage3.jpg',
                                      text: 'Sales OFF 50%'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ActionButtons(
                                    text: 'Electricity Payment',
                                    icon: FontAwesomeIcons.bolt,
                                    iconColor: Colors.blue,
                                    onTap: (){
                                      Navigator.push(context, PageTransition(child: ScreenTwentyFive(), type: PageTransitionType.fade));
                                    },),
                                  ActionButtons(
                                      text: 'Water Payment',
                                      icon: FontAwesomeIcons.droplet,
                                      iconColor: Colors.blue.shade400),
                                  ActionButtons(
                                      text: 'Airfare',
                                      icon: FontAwesomeIcons.plane,
                                      iconColor: Colors.redAccent.shade200)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(horizontal: 10),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //     children: [
                            //       ActionButtons(
                            //         text: 'Electricity Payment',
                            //         icon: FontAwesomeIcons.bolt,
                            //         iconColor: Colors.blue,
                            //         onTap: (){
                            //           Navigator.push(context, PageTransition(child: ScreenTwentyFive(), type: PageTransitionType.fade));
                            //         },),
                            //       ActionButtons(
                            //           text: 'Water Payment',
                            //           icon: FontAwesomeIcons.droplet,
                            //           iconColor: Colors.blue.shade400),
                            //       ActionButtons(
                            //           text: 'Airfare',
                            //           icon: FontAwesomeIcons.plane,
                            //           iconColor: Colors.redAccent.shade200)
                            //     ],
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 10,
                            // ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



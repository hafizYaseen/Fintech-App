import 'package:fast_pay/components/containerBox.dart';
import 'package:fast_pay/components/notificationsContainer2.dart';
import 'package:fast_pay/screenEleven.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/constants.dart';

class ScreenThirteen extends StatefulWidget {
  const ScreenThirteen({super.key});

  @override
  State<ScreenThirteen> createState() => _ScreenThirteenState();
}

class _ScreenThirteenState extends State<ScreenThirteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ContainerBox(
            text: 'Transaction Details',
            backColor: Constants.primaryColor,
            color: Constants.tertiaryColor,
            h: 120,
            w: double.infinity,
            icon1: Icons.arrow_back_ios_new,
            move: ScreenEleven(),
          ),
          NotificationsContainer2(
            text1: 'Top Up your wallet ',
            backColor: Constants.tertiaryColor,
            icon1color: Colors.blue,
            h: 140,
            w: 350,
            icon1: FontAwesomeIcons.wallet,
            text2: 'Processing',
            container2color: Colors.yellow.shade100,
            text2color: Colors.yellow.shade700,
            text3: 'Feb 12, 2020',
            text4: '\$ 400',
            text5: 'Transaction Status',),
          SizedBox(height: 10,),
          Container(
            width: 350,
            decoration: BoxDecoration(
                color: Constants.tertiaryColor,
                borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fund',
                        style: TextStyle(
                            color: Constants.secondaryColor,
                            fontFamily: Constants.tertiaryFont,
                            fontSize: Constants.mediumFontSize
                        ),),
                      Text('APAY Wallet',
                        style: TextStyle(
                            color: Constants.primaryColor,
                            fontFamily: Constants.secondaryFont,
                            fontSize: Constants.mediumFontSize
                        ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Transaction Fee',
                        style: TextStyle(
                            color: Constants.secondaryColor,
                            fontFamily: Constants.tertiaryFont,
                            fontSize: Constants.mediumFontSize
                        ),),
                      Text('Free',
                        style: TextStyle(
                            color: Constants.primaryColor,
                            fontFamily: Constants.secondaryFont,
                            fontSize: Constants.mediumFontSize
                        ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Trading Code',
                        style: TextStyle(
                            color: Constants.secondaryColor,
                            fontFamily: Constants.tertiaryFont,
                            fontSize: Constants.mediumFontSize
                        ),),
                      Text('532105',
                        style: TextStyle(
                            color: Constants.primaryColor,
                            fontFamily: Constants.secondaryFont,
                            fontSize: Constants.mediumFontSize
                        ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Time',
                        style: TextStyle(
                            color: Constants.secondaryColor,
                            fontFamily: Constants.tertiaryFont,
                            fontSize: Constants.mediumFontSize
                        ),),
                      Text('12:43, Feb 12,2023',
                        style: TextStyle(
                            color: Constants.primaryColor,
                            fontFamily: Constants.secondaryFont,
                            fontSize: Constants.mediumFontSize
                        ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}

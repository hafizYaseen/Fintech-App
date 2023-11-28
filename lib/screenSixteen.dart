import 'package:fast_pay/components/containerBox.dart';
import 'package:fast_pay/components/customNavigationBar.dart';
import 'package:fast_pay/components/formFieldText2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/constants.dart';

class ScreenSixteen extends StatefulWidget {
  const ScreenSixteen({super.key});

  @override
  State<ScreenSixteen> createState() => _ScreenSixteenState();
}

class _ScreenSixteenState extends State<ScreenSixteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerBox(
              text: 'Deposit into the Wallet',
              backColor: Constants.primaryColor,
              color: Constants.tertiaryColor,
              h: 120,
              w: double.infinity,
              icon1: Icons.arrow_back_ios,
              move: CustomNavigationBar(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
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
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Founds',
                    style: TextStyle(
                        fontSize: Constants.mediumFontSize,
                        fontFamily: Constants.primaryFont,
                        color: Constants.primaryColor),
                  ),
                  Icon(CupertinoIcons.question_circle)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Constants.tertiaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.money_dollar_circle_fill),
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
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
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
                          'Bank B',
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
                      width: 175,
                    ),
                    Icon(CupertinoIcons.question_circle)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Constants.tertiaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.money_rubl_circle,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bank C',
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
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Constants.tertiaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Icon(
                      Icons.money,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Another Founds',
                          style: TextStyle(
                              fontFamily: Constants.secondaryFont,
                              fontSize: Constants.mediumFontSize,
                              color: Constants.primaryColor),
                        ),
                        Text(
                          'ATM Cards/International Cards',
                          style: TextStyle(
                              fontFamily: Constants.tertiaryFont,
                              fontSize: 10,
                              color: Constants.secondaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod '
                    'tempor incididunt ut labore et dolore\nmagna aliqua. Ut enim ad minim veniam, '
                    'quis nostrud\nexercitation ullamco laboris nisi ut aliquip ex ea\ncommodo consequat.',style: TextStyle(
              fontSize: Constants.smallFontSize,
              fontFamily: Constants.tertiaryFont,
              color: Constants.secondaryColor
            ),
            textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}

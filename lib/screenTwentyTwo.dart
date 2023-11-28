import 'package:fast_pay/components/button3.dart';
import 'package:fast_pay/screenTwentyThree.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'components/constants.dart';

class ScreenTwentyTwo extends StatefulWidget {
  const ScreenTwentyTwo({super.key});

  @override
  State<ScreenTwentyTwo> createState() => _ScreenTwentyTwoState();
}

class _ScreenTwentyTwoState extends State<ScreenTwentyTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text('Manage Groups or Friends'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Constants.primaryColor,
          actions: [
            GestureDetector(
                child: Icon(Icons.add_circle_outline_sharp),
                onTap: (){
                  Navigator.push(context, PageTransition(child: ScreenTwentyThree(), type: PageTransitionType.fade));
                }
                ),
            SizedBox(
              width: 10,
            )
          ],
          titleTextStyle: TextStyle(
            fontSize: Constants.largeFontSize,
            fontFamily: Constants.primaryFont,
            color: Constants.tertiaryColor,
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Icon(
              Icons.groups,
              size: 120,
              color: Constants.primaryColor,
            )),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
              style: TextStyle(
                  fontSize: Constants.mediumFontSize,
                  fontFamily: Constants.tertiaryFont,
                  color: Constants.primaryColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            ButtonThree(
              name: 'CREATE',
              color: Constants.tertiaryColor,
              backcolor: Constants.primaryColor,
              w: double.infinity,
              h: 50,
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: ScreenTwentyThree(),
                        type: PageTransitionType.fade));
              },
            ),
          ],
        ),
      ),
    );
  }
}

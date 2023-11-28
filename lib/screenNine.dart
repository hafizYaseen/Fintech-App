import 'dart:ui';

import 'package:fast_pay/screenEight.dart';
import 'package:flutter/material.dart';
import 'components/constants.dart';


class ScreenNine extends StatefulWidget {
  const ScreenNine({super.key});

  @override
  State<ScreenNine> createState() => _ScreenNineState();
}

class _ScreenNineState extends State<ScreenNine> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(child: Icon(Icons.arrow_back_ios_new,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenEight()));
            },),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Instructions to retrieve\nthe password',
                style: TextStyle(
                    fontSize: Constants.largeFontSize,
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: Constants.primaryFont),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text('Please perform the following 3 steps to\nretrieve your password:',
              style: TextStyle(
                fontSize: Constants.mediumFontSize,
                color: Constants.secondaryColor,
                fontFamily: Constants.secondaryFont
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  child: Center(
                    child: Text('1',
                    style: TextStyle(
                      color: Constants.tertiaryColor,
                      fontFamily: Constants.secondaryFont,
                      fontSize: Constants.smallFontSize
                    ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  ),
                Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna\naliqua. Ut enim ad',
                style: TextStyle(
                  fontFamily: Constants.tertiaryFont,
                  color: Constants.secondaryColor,
                  fontSize: Constants.mediumFontSize
                ),)

              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  child: Center(
                    child: Text('2',
                      style: TextStyle(
                          color: Constants.tertiaryColor,
                          fontFamily: Constants.secondaryFont,
                          fontSize: Constants.smallFontSize
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna',
                  style: TextStyle(
                      fontFamily: Constants.tertiaryFont,
                      color: Constants.secondaryColor,
                      fontSize: Constants.mediumFontSize
                  ),)

              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  child: Center(
                    child: Text('3',
                      style: TextStyle(
                          color: Constants.tertiaryColor,
                          fontFamily: Constants.secondaryFont,
                          fontSize: Constants.smallFontSize
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore',
                  style: TextStyle(
                      fontFamily: Constants.tertiaryFont,
                      color: Constants.secondaryColor,
                      fontSize: Constants.mediumFontSize
                  ),)

              ],
            )
          ],
        ),
      ),
    );
  }
}

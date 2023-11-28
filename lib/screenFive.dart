import 'package:fast_pay/screenSeven.dart';
import 'package:fast_pay/screenSix.dart';
import 'package:flutter/material.dart';

import 'components/button3.dart';
import 'components/constants.dart';
import 'components/formFieldText.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
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
                'Personal Info',
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
            FormFieldText(
              h: 40,
              w: 350,
              length: 6,
              textInputType: TextInputType.text,
              flag: false,
              hintText: 'First Name',
                backColor: Constants.tertiaryColor
            ),
            SizedBox(
              height: 10,
            ),
            FormFieldText(
              h: 40,
              w: 350,
              length: 6,
              textInputType: TextInputType.text,
              flag: false,
              hintText: 'Last Name',
                backColor: Constants.tertiaryColor
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child: ButtonThree(
                      name: 'ENTER',
                      color: Constants.tertiaryColor,
                      backcolor: Constants.secondaryColor,
                      w: 120,
                      h: 50),

                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenSeven()));
                  },
                ),
              ),
            ),
          ],
        ),
    );

  }
}

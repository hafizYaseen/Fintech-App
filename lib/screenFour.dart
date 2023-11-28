import 'package:fast_pay/components/formField.dart';
import 'package:fast_pay/components/formFieldText.dart';
import 'package:fast_pay/screenFive.dart';
import 'package:flutter/material.dart';

import 'components/button3.dart';
import 'components/constants.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
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
                'Create a password',
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
              textInputType: TextInputType.phone,
              flag: true,
              hintText: 'Your password',
                backColor: Constants.tertiaryColor
            ),
            SizedBox(
              height: 10,
            ),
            FormFieldText(
              h: 40,
              w: 350,
              length: 6,
              textInputType: TextInputType.phone,
              flag: true,
              hintText: 'Re-enter password',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFive()));
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

import 'package:fast_pay/components/button3.dart';
import 'package:fast_pay/components/formFieldText2.dart';
import 'package:fast_pay/screenNineteen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'components/constants.dart';

class ScreenTwenty extends StatefulWidget {
  const ScreenTwenty({super.key});

  @override
  State<ScreenTwenty> createState() => _ScreenTwentyState();
}

class _ScreenTwentyState extends State<ScreenTwenty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text('Transfer APAY Wallet'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Constants.primaryColor,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                maxRadius: 60,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Yaseen Ejaz',
              style: TextStyle(
                  fontFamily: Constants.secondaryFont,
                  fontSize: Constants.largeFontSize,
                  color: Constants.primaryColor),
            ),
            SizedBox(
              height: 5,
            ),
            Text('0347-9568681',
                style: TextStyle(
                    fontFamily: Constants.secondaryFont,
                    fontSize: Constants.mediumFontSize,
                    color: Constants.secondaryColor)),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: FormFieldText2(
                  h: 50,
                  length: 10,
                  textInputType: TextInputType.number,
                  flag: false,
                  hintText: ' Enter the Amount',
                  backColor: Constants.tertiaryColor,
                  textColor: Constants.primaryColor,
              cursorColor: Constants.primaryColor,
              prefixText: '\$ ',),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: FormFieldText2(
                h: 50,
                length: 300,
                textInputType: TextInputType.text,
                flag: false,
                hintText: 'Message (optional)',
                backColor: Constants.tertiaryColor,
                textColor: Constants.primaryColor,
                cursorColor: Constants.primaryColor,),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ButtonThree(name: 'NEXT', color: Constants.tertiaryColor, backcolor: Constants.secondaryColor, w: double.infinity, h: 50),
            )
          ],
        ),
      ),
    );
  }
}

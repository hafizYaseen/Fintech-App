import 'package:fast_pay/screenEleven.dart';
import 'package:fast_pay/screenThirteen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/actionButtons.dart';
import 'components/constants.dart';
import 'components/formFieldText2.dart';

class ScreenFourteen extends StatefulWidget {
  const ScreenFourteen({super.key});

  @override
  State<ScreenFourteen> createState() => _ScreenFourteenState();
}

class _ScreenFourteenState extends State<ScreenFourteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
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
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Offer',
                  style: TextStyle(
                      fontSize: Constants.largeFontSize,
                      color: Constants.primaryColor,
                      fontFamily: Constants.primaryFont),
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
                  ),
                  ActionButtons(
                    text: 'Request Money',
                    icon: CupertinoIcons.money_dollar,
                    iconColor: Colors.blue.shade600,
                    iconSize: 40,
                  ),
                  ActionButtons(
                      text: 'Manage Friends',
                      icon: FontAwesomeIcons.userGroup,
                      iconColor: Colors.blue.shade300),
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
                  ActionButtons(text: 'Order Food', icon: Icons.fastfood, iconColor: Colors.orange.shade400, iconSize: 40,),
                  ActionButtons(text: 'Give Gifts', icon: CupertinoIcons.gift, iconColor: Colors.red, iconSize: 40,),
                  ActionButtons(text: 'Pay Bills', icon: FontAwesomeIcons.moneyBills, iconColor: Colors.blueAccent,),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Fast Access',
                  style: TextStyle(
                      fontSize: Constants.largeFontSize,
                      color: Constants.primaryColor,
                      fontFamily: Constants.primaryFont),
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
                  ActionButtons(text: 'Buy Movie Tickets', icon: Icons.movie_outlined, iconColor: Colors.redAccent,),
                  ActionButtons(text: 'Consumer Loans', icon: FontAwesomeIcons.coins, iconColor: Colors.orangeAccent,),
                  ActionButtons(text: 'All Services', icon: FontAwesomeIcons.ellipsis, iconColor: Colors.blue,),
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
                  ActionButtons(text: 'Electricity Payment', icon: FontAwesomeIcons.bolt, iconColor: Colors.blue),
                  ActionButtons(text: 'Water Payment', icon: FontAwesomeIcons.droplet, iconColor: Colors.blue.shade400),
                  ActionButtons(text: 'Airfare', icon: FontAwesomeIcons.plane, iconColor: Colors.redAccent.shade200)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fast_pay/screenNineteen.dart';
import 'package:fast_pay/screenTwentyFive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'components/actionButtons.dart';
import 'components/constants.dart';
import 'components/notificationsContainer2.dart';

class ScreenTwentyFour extends StatefulWidget {
  const ScreenTwentyFour({super.key});

  @override
  State<ScreenTwentyFour> createState() => _ScreenTwentyFourState();
}

class _ScreenTwentyFourState extends State<ScreenTwentyFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text('Pay Bills'),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Add New Invoices',
                style: TextStyle(
                    fontSize: Constants.largeFontSize,
                    color: Constants.primaryColor,
                    fontFamily: Constants.primaryFont),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
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
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
            SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionButtons(
                    text: 'Phone',
                    icon: FontAwesomeIcons.mobileScreen,
                    iconColor: Colors.blue),
                SizedBox(
                  width: 10,
                ),
                ActionButtons(
                    text: 'Internet',
                    icon: FontAwesomeIcons.wifi,
                    iconColor: Colors.green.shade400),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recent',
                style: TextStyle(
                    fontSize: Constants.largeFontSize,
                    color: Constants.primaryColor,
                    fontFamily: Constants.primaryFont),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            NotificationsContainer2(
              text1: 'City Electricity A ',
              backColor: Constants.tertiaryColor,
              icon1color: Colors.blue,
              h: 140,
              w: 350,
              icon1: FontAwesomeIcons.bolt,
              text2: 'Payed',
              container2color: Colors.green.shade100,
              text2color: Colors.green.shade700,
              text3: 'Alex Morgan',
              text4: '',
              text5: 'CEA 23540245699',
            ),
          ],
        ),
      ),
    );
  }
}

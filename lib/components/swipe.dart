import 'package:fast_pay/ScreenTwelve.dart';
import 'package:fast_pay/components/convexClipper.dart';
import 'package:fast_pay/components/notificationsContainer.dart';
import 'package:fast_pay/screenThirteen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:flutter_swipe_action_cell/core/controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'containerBox.dart';
import 'customNavigationBar.dart';

class Swipe extends StatefulWidget {
  const Swipe({super.key});

  @override
  State<Swipe> createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {

  List<Widget> boxes = [
    NotificationsContainer(
        text1: 'Pay \$200 City Electricity A',
        backColor: Constants.tertiaryColor,
        icon1color: Colors.blue,
        h: 140,
        w: 350,
        icon1: FontAwesomeIcons.bolt,
        text2: 'Processing',
        container2color: Colors.yellow.shade100,
        text2color: Colors.yellow.shade700,
        text3: 'Feb 12, 2020',onPress: ScreenThirteen(),),
    NotificationsContainer(
        text1: 'Pay \$200 City Electricity B',
        backColor: Constants.tertiaryColor,
        icon1color: Colors.blue,
        h: 140,
        w: 350,
        icon1: FontAwesomeIcons.wallet,
        text2: 'Successful',
        container2color: Colors.green.shade100,
        text2color: Colors.green.shade700,
        text3: 'Feb 12, 2020',onPress: ScreenTwelve(),),
    NotificationsContainer(
        text1: 'Pay \$200 City Electricity A',
        backColor: Constants.tertiaryColor,
        icon1color: Colors.blue,
        h: 140,
        w: 350,
        icon1: FontAwesomeIcons.droplet,
        text2: 'Failed',
        container2color: Colors.red.shade100,
        text2color: Colors.red.shade700,
        text3: 'Feb 12, 2020',onPress: ScreenTwelve(),),
    NotificationsContainer(
        text1: 'Pay \$200 City Electricity A',
        backColor: Constants.tertiaryColor,
        icon1color: Colors.blue,
        h: 140,
        w: 350,
        icon1: FontAwesomeIcons.gasPump,
        text2: 'Processing',
        container2color: Colors.yellow.shade100,
        text2color: Colors.yellow.shade700,
        text3: 'Feb 12, 2020',onPress: ScreenThirteen(),),
    NotificationsContainer(
        text1: 'Pay \$200 City Electricity A',
        backColor: Constants.tertiaryColor,
        icon1color: Colors.blue,
        h: 140,
        w: 350,
        icon1: FontAwesomeIcons.intercom,
        text2: 'Successful',
        container2color: Colors.green.shade100,
        text2color: Colors.green.shade700,
        text3: 'Feb 12, 2020',onPress: ScreenTwelve(),),
    NotificationsContainer(
        text1: 'Pay \$200 City Electricity A',
        backColor: Constants.tertiaryColor,
        icon1color: Colors.blue,
        h: 140,
        w: 350,
        icon1: FontAwesomeIcons.radio,
        text2: 'Failed',
        container2color: Colors.red.shade100,
        text2color: Colors.red.shade700,
        text3: 'Feb 12, 2020',onPress: ScreenTwelve(),),
  ];
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: boxes.length,
            itemBuilder: (context, index){
            final box = boxes[index];

            return Slidable(
              endActionPane: ActionPane(
                motion: const BehindMotion(),
                children: [
                  ClipPath(
                    clipper: ConvexClipper(),
                    child: Container(
                        height: 140,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade300
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.done_all_outlined),
                              SizedBox(height: 5,),
                              Text('Mark Read')
                            ],
                          ),
                        )
                    ),
                  ),
                  Container(
                      height: 140,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.redAccent
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.delete, color: Colors.white,),
                            SizedBox(height: 5,),
                            Text('Delete')
                          ],
                        ),
                      )
                  ),

                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child : box,
                ),
              ),
            );

            },
      ),
    );


  }
}

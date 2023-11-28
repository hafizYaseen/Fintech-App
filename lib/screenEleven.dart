import 'package:fast_pay/components/containerBox.dart';
import 'package:fast_pay/components/customNavigationBar.dart';
import 'package:fast_pay/components/notificationsContainer.dart';
import 'package:fast_pay/components/swipe.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/constants.dart';

class ScreenEleven extends StatefulWidget {
  const ScreenEleven({super.key});

  @override
  State<ScreenEleven> createState() => _ScreenElevenState();
}

class _ScreenElevenState extends State<ScreenEleven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      body: Column(
        children: [
          ContainerBox(
            text: 'Notifications',
            backColor: Constants.primaryColor,
            color: Constants.tertiaryColor,
            h: 120,
            w: double.infinity,
            icon1: Icons.arrow_back_ios_new,
            icon2: FontAwesomeIcons.barsProgress,
            move: CustomNavigationBar(),
          ),
          Swipe(),

        ],
      ),
    );
  }
}


import 'package:fast_pay/screenFour.dart';
import 'package:fast_pay/screenSeven.dart';
import 'package:fast_pay/screenSix.dart';
import 'package:fast_pay/screenTen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  int _currentIndex = 0;
  final screens = [
    ScreenTen(),
    ScreenSeven(),
    ScreenFour(),
    ScreenSix()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Constants.tertiaryColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Constants.secondaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Constants.primaryColor,
            label: 'Home',
            activeIcon: Icon(Icons.home_filled,),
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.clockRotateLeft),
              backgroundColor: Constants.primaryColor,
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.idBadge),
              backgroundColor: Constants.primaryColor,
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.wallet),
              backgroundColor: Constants.primaryColor,
              label: 'Home'
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

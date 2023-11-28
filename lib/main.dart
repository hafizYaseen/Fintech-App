import 'package:fast_pay/screenEight.dart';
import 'package:fast_pay/screenEighteen.dart';
import 'package:fast_pay/screenFifteen.dart';
import 'package:fast_pay/screenFourteen.dart';
import 'package:fast_pay/screenNineteen.dart';
import 'package:fast_pay/screenSeventeen.dart';
import 'package:fast_pay/screenSix.dart';
import 'package:fast_pay/screenSixteen.dart';
import 'package:fast_pay/screenTen.dart';
import 'package:fast_pay/screenThirteen.dart';
import 'package:fast_pay/screenTwelve.dart';
import 'package:fast_pay/components/customNavigationBar.dart';
import 'package:fast_pay/components/swipe.dart';
import 'package:fast_pay/screenEleven.dart';
import 'package:fast_pay/screenFive.dart';
import 'package:fast_pay/screenFour.dart';
import 'package:fast_pay/screenOne.dart';
import 'package:fast_pay/screenSeven.dart';
import 'package:fast_pay/screenThree.dart';
import 'package:fast_pay/screenTwenty.dart';
import 'package:fast_pay/screenTwentyFive.dart';
import 'package:fast_pay/screenTwentyFour.dart';
import 'package:fast_pay/screenTwentyOne.dart';
import 'package:fast_pay/screenTwentyThree.dart';
import 'package:fast_pay/screenTwentyTwo.dart';
import 'package:fast_pay/screenTwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}





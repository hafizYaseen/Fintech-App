// import 'package:fast_pay/components/screen1.dart';
// import 'package:fast_pay/screenSix.dart';
// import 'package:fast_pay/screenTwo.dart';
// import 'package:flutter/material.dart';
//
// import 'components/button1.dart';
// import 'components/button2.dart';
//
// class ScreenOne extends StatefulWidget {
//   const ScreenOne({super.key});
//
//   @override
//   State<ScreenOne> createState() => _ScreenOneState();
// }
//
// class _ScreenOneState extends State<ScreenOne> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 Screen1(
//                   image1: 'assets/images/screenOneIcon1.png',
//                   text1: 'Definitely Safe',
//                   text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
//                   flag1: true,
//                 ),
//                 Screen1(
//                   image1: 'assets/images/screenTwoIcon1.png',
//                   text1: 'Best Services',
//                   text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
//                   flag2: true,
//                 ),
//                 Screen1(
//                   image1: 'assets/images/screenThreeIcon1.png',
//                   text1: 'Easy Deposit',
//                   text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
//                   flag3: true,
//                 ),
//                 Screen1(
//                   image1: 'assets/images/screenFourIcon1.png',
//                   text1: 'Dream Deals',
//                   text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
//                   flag4: true,
//                 ),
//                 Screen1(
//                   image1: 'assets/images/screenFiveIcon1.png',
//                   text1: 'Quick Transfer',
//                   text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
//                   flag5: true,
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                   child: ButtonTwo(name: 'REGISTER'),
//                   onTap: () {
//                     Navigator.pushReplacement(context,
//                         MaterialPageRoute(builder: (context) => ScreenTwo()));
//                   },
//                 ),
//                 GestureDetector(child: ButtonOne(name: 'LOGIN'),
//                 onTap: (){
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScreenSix()));
//                 },),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:fast_pay/screenTwo.dart';
import 'package:fast_pay/screenSix.dart';
import 'components/button1.dart';
import 'components/button2.dart';
import 'components/screen1.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  // Create a PageController to control the PageView
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Wrap your PageView with an Expanded widget to make it take the available space
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                Screen1(
                  image1: 'assets/images/screenOneIcon1.png',
                  text1: 'Definitely Safe',
                  text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
                  flag1: true,
                ),
                Screen1(
                  image1: 'assets/images/screenTwoIcon1.png',
                  text1: 'Best Services',
                  text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
                  flag2: true,
                ),
                Screen1(
                  image1: 'assets/images/screenThreeIcon1.png',
                  text1: 'Easy Deposit',
                  text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
                  flag3: true,
                ),
                Screen1(
                  image1: 'assets/images/screenFourIcon1.png',
                  text1: 'Dream Deals',
                  text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
                  flag4: true,
                ),
                Screen1(
                  image1: 'assets/images/screenFiveIcon1.png',
                  text1: 'Quick Transfer',
                  text2: 'Lorem ipsum dolor sit amet,\nsadipscing elitr, sed',
                  flag5: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: ButtonTwo(name: 'REGISTER'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenTwo()),
                    );
                  },
                ),
                GestureDetector(
                  child: ButtonOne(name: 'LOGIN'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScreenSix()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


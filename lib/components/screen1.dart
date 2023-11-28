import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  String image1, text1, text2;
  bool flag1, flag2, flag3, flag4, flag5;
  Screen1({required this.image1, required this.text1, required this.text2, this.flag1 = false, this.flag2 = false, this.flag3 = false, this.flag4 = false, this.flag5 = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Center(
                      child: Image(
                        image: AssetImage(image1),
                        height: 180,
                      ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                      fontFamily: 'OpenSans Bold',
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontFamily: 'OpenSans SemiBold',
                      fontSize: 16,
                      color: Color(0XFFA3A2BB),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fiber_manual_record, size: flag1 == true? 17 : 10, color: flag1 == true? Color(0XFF272643) : Color(0XFFBAE8E8),),
                      Icon(Icons.fiber_manual_record, size: flag2 == true? 17 : 10, color: flag2 == true? Color(0XFF272643) : Color(0XFFBAE8E8),),
                      Icon(Icons.fiber_manual_record, size: flag3 == true? 17 : 10, color: flag3 == true? Color(0XFF272643) : Color(0XFFBAE8E8),),
                      Icon(Icons.fiber_manual_record, size: flag4 == true? 17 : 10, color: flag4 == true? Color(0XFF272643) : Color(0XFFBAE8E8),),
                      Icon(Icons.fiber_manual_record, size: flag5 == true? 17 : 10, color: flag5 == true? Color(0XFF272643) : Color(0XFFBAE8E8),),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

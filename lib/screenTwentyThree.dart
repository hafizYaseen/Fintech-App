import 'package:fast_pay/screenEighteen.dart';
import 'package:fast_pay/screenTwenty.dart';
import 'package:fast_pay/screenTwentyOne.dart';
import 'package:fast_pay/screenTwentyTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'components/button3.dart';
import 'components/constants.dart';
import 'components/formFieldText2.dart';

class ScreenTwentyThree extends StatefulWidget {
  const ScreenTwentyThree({super.key});

  @override
  State<ScreenTwentyThree> createState() => _ScreenTwentyThreeState();
}

class User {
  final String name;
  final String phone;
  bool? isChecked;

  User({required this.name, required this.phone, this.isChecked = false});
}

class _ScreenTwentyThreeState extends State<ScreenTwentyThree> {
  @override

  final List<User> users = [
    User(name: 'Yaseen Ejaz', phone: '0347-9568681'),
    User(name: 'Sheikh Abdur Rehman', phone: '0348-9865231'),
    User(name: 'Amir Hamza', phone: '0348-9865231'),
    User(name: 'Hamza Sufi', phone: '0348-9865231'),
    User(name: 'Hassam Swati', phone: '0348-9865231'),
    User(name: 'Yasir Raza', phone: '0348-9865231'),
    User(name: 'Babar Azam', phone: '0348-9865231'),
    User(name: 'Shaheen', phone: '0348-9865231'),
    User(name: 'Imam', phone: '0348-9865231'),
    User(name: 'Rizwan', phone: '0348-9865231'),
    User(name: 'Shadab', phone: '0348-9865231'),
  ];
  bool isChecked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Constants.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Constants.tertiaryColor,
                        ),
                        onTap: () {
                          Navigator.pop(context);

                        },
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Create Group',
                        style: TextStyle(
                            color: Constants.tertiaryColor,
                            fontFamily: Constants.primaryFont,
                            fontSize: Constants.largeFontSize),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormFieldText2(
                    h: 50,
                    w: 400,
                    length: 100,
                    textInputType: TextInputType.text,
                    flag: false,
                    hintText: 'Enter Name or Phone Number',
                    backColor: Constants.primaryColor,
                    textColor: Constants.tertiaryColor,
                    suffixIcon: CupertinoIcons.search,
                    enableBorderColor: Constants.primaryColor,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Personal', style: TextStyle(
                    fontFamily: Constants.primaryFont,
                    fontSize: Constants.largeFontSize,
                    color: Constants.primaryColor
                  ),),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: GestureDetector(
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Constants.tertiaryColor),
                                child: ListTile(
                                  leading: Transform.scale(
                                    scale: 1.3,
                                    child: Container(
                                      width: 40,
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Theme(
                                        data: ThemeData(
                                          unselectedWidgetColor: Constants.primaryColor
                                        ),
                                        child: Checkbox(
                                          checkColor: Constants.primaryColor,
                                          activeColor: Colors.blue.withOpacity(0.3),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                          value: user.isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              user.isChecked = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(color: Constants.primaryColor,width: 2)
                                            ),
                                            child: const CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            color: Colors.transparent,

                                          ),
                                          Positioned(
                                            top: 25,
                                            left: 30,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(horizontal: 4,),
                                              height: 15,
                                              width: 15,
                                              child: Text('A',style: TextStyle(
                                                color: Constants.tertiaryColor,
                                                fontFamily: Constants.secondaryFont,
                                                fontSize: 10,
                                              ),),
                                              decoration: BoxDecoration(
                                                color: Constants.primaryColor,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(user.name, style: TextStyle(
                                            fontSize: Constants.mediumFontSize,
                                            fontFamily: Constants.tertiaryFont,
                                            color: Constants.primaryColor
                                          ),textAlign: TextAlign.start,),
                                          Text(user.phone,style: TextStyle(
                                              fontSize: Constants.smallFontSize,
                                              fontFamily: Constants.tertiaryFont,
                                              color: Constants.secondaryColor,
                                          ),
                                            textAlign: TextAlign.start,),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              onTap: (){
                                setState(() {
                                  user.isChecked = !user.isChecked!;
                                });
                              },
                            ),
                          );

                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

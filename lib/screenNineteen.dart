import 'package:fast_pay/components/button3.dart';
import 'package:fast_pay/components/containerBox.dart';
import 'package:fast_pay/components/formFieldText2.dart';
import 'package:fast_pay/screenEighteen.dart';
import 'package:fast_pay/screenTwenty.dart';
import 'package:fast_pay/screenTwentyOne.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'components/constants.dart';

class ScreenNineteen extends StatefulWidget {
  const ScreenNineteen({super.key});

  @override
  State<ScreenNineteen> createState() => _ScreenNineteenState();
}

class User {
  final String name;
  final String phone;

  User({required this.name, required this.phone});
}

class _ScreenNineteenState extends State<ScreenNineteen> {
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
  @override
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
                        'Phone Book',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child:Container(
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Constants.tertiaryColor),
                                child: GestureDetector(
                                  onTap: (){
                                    if(index<=4){
                                      Navigator.push(context, PageTransition(child: ScreenTwenty(), type: PageTransitionType.fade));
                                    }
                                    else if(index>4){
                                      Navigator.push(context, PageTransition(child: ScreenTwentyOne(), type: PageTransitionType.fade));
                                    }
                                  },
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    ),
                                    title: Text(user.name),
                                    subtitle: Text(user.phone),
                                    trailing: index > 4 ? GestureDetector(
                                      child: ButtonThree(
                                          name: 'Invite',
                                          color: Colors.blue,
                                          backcolor: Colors.blue.shade100,
                                          fontSize: 10,
                                          w: 40,
                                          h: 20),
                                    onTap: (){
                                        Navigator.push(context, PageTransition(child: ScreenTwentyOne(), type: PageTransitionType.fade));
                                    },): SizedBox.shrink(),
                                  ),
                                ),
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

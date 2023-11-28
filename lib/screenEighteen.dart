import 'package:fast_pay/components/customNavigationBar.dart';
import 'package:fast_pay/screenNineteen.dart';
import 'package:fast_pay/screenTen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'components/constants.dart';

class ScreenEighteen extends StatefulWidget {
  const ScreenEighteen({super.key});

  @override
  State<ScreenEighteen> createState() => _ScreenEighteenState();
}

class _ScreenEighteenState extends State<ScreenEighteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Text('Transfer'),
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: Constants.primaryColor,
            titleTextStyle: TextStyle(
              fontSize: Constants.largeFontSize,
              fontFamily: Constants.primaryFont,
              color: Constants.tertiaryColor,
            ),
            leading: GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(child: CustomNavigationBar(), type: PageTransitionType.fade));
                },
                child: Icon(Icons.arrow_back_ios)),
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text(
              'Choose the form of Money Transfer',
              style: TextStyle(
                  fontSize: Constants.mediumFontSize,
                  fontFamily: Constants.primaryFont,
                  color: Constants.primaryColor),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Constants.tertiaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Icon(
                      Icons.money,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Transfer to APAY Wallet',
                      style: TextStyle(
                          fontFamily: Constants.tertiaryFont,
                          fontSize: Constants.mediumFontSize,
                          color: Constants.primaryColor),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined, color: Constants.secondaryColor,size: 20,)
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, PageTransition(child: ScreenNineteen(), type: PageTransitionType.fade));
              },
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Constants.tertiaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Icon(
                    Icons.money,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Transfer to Domestic Bank',
                    style: TextStyle(
                        fontFamily: Constants.tertiaryFont,
                        fontSize: Constants.mediumFontSize,
                        color: Constants.primaryColor),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Icon(Icons.arrow_forward_ios_outlined, color: Constants.secondaryColor,size: 20,)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'Choose the Members',
              style: TextStyle(
                  fontSize: Constants.mediumFontSize,
                  fontFamily: Constants.primaryFont,
                  color: Constants.primaryColor),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Constants.tertiaryColor
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          ),
                          title: Text('Patrick Evans'),
                          subtitle: Text('342-854-5445'),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

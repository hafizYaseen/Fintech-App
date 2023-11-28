import 'package:flutter/material.dart';

import 'constants.dart';

class ButtonTwo extends StatelessWidget {

  String name;
  ButtonTwo({required this.name,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),

      ),
      child: Center(
        child: Text(name, style: TextStyle(
          color: Constants.primaryColor,
          fontSize: 16,
          fontFamily: 'OpenSans SemiBold',
          decoration: TextDecoration.none,

        ),
        ),
      ),
    );
  }
}


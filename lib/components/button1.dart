import 'package:flutter/material.dart';

import 'constants.dart';

class ButtonOne extends StatelessWidget {

  String name;
  ButtonOne({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(25),

      ),
      child: Center(
        child: Text(name, style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'OpenSans SemiBold',
          decoration: TextDecoration.none,
        ),
          textAlign: TextAlign.center,),
      ),
    );
  }
}


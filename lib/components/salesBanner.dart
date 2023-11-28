import 'package:flutter/material.dart';

import 'constants.dart';

class SalesBanner extends StatelessWidget {
  String image;
  String text;

  SalesBanner({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    height: 80,
                    width: 300,
                    child: Image(image: AssetImage(image),
                      fit: BoxFit.fill,)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 35),
            child: Align(
              alignment: Alignment.center,
              child: Text(text,
                style: TextStyle(
                  fontFamily: Constants.primaryFont,
                  fontSize: 30,
                ),),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../constant.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color  color;
  final VoidCallback onPress;
  const MyButton({super.key ,
    required this.title,
    this.color = color1,
    required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScreenTwentyOne extends StatefulWidget {
  const ScreenTwentyOne({super.key});

  @override
  State<ScreenTwentyOne> createState() => _ScreenTwentyOneState();
}

class _ScreenTwentyOneState extends State<ScreenTwentyOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twenty One'),
      ),
    );
  }
}

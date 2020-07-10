import 'package:flutter/material.dart';
import 'package:simple_waves/first_screen.dart';

void main() {
  runApp(AnimationDemo());
}

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xff1dd3bd)),
      home: FirstScreen(),
    );
  }
}

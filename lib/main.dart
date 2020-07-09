import 'package:flutter/material.dart';
import 'package:simple_waves/first_screen.dart';

void main() {
  runApp(AnimationDemo());
}

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween<String>()
      ..add(
          'color1',
          ColorTween(begin: Color(0xffA83279), end: Colors.blue.shade600),
          Duration(seconds: 2))
      ..add(
          'color2',
          ColorTween(begin: Color(0xffD38312), end: Colors.lightBlue.shade900),
          Duration(seconds: 2));

    return MirrorAnimation(
      tween: _tween,
      builder: (context, child, value) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [value.get('color1'), value.get('color2')],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        );
      },
    );
  }
}

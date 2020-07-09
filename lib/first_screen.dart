import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_waves/animated_backgroud.dart';
import 'package:simple_waves/animated_wave.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('user name'),
                Text('password'),
              ],
            ),
          )),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                child: AnimatedWave(
                  color: Color(0xff2bb2bb),
                  height: 120,
                  speed: 1.0,
                ),
              ),
              Container(
                child: AnimatedWave(
                  color: Color(0xff1dd3bd),
                  height: 100,
                  speed: 1.4,
                  offset: pi,
                ),
              ),
              Container(
                child: AnimatedWave(
                  color: Color(0xff87d4c5),
                  height: 100,
                  speed: 0.7,
                  offset: pi / 2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

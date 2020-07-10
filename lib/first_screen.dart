import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_waves/animated_wave.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.play_for_work,
                  size: 100,
                  color: Color(0xff1dd3bd),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Color(0xff1dd3bd),
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: Container(
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Need help?',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(height: 100)
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
                  speed: 0.7,
                ),
              ),
              Container(
                child: AnimatedWave(
                  color: Color(0xff87d4c5),
                  height: 100,
                  speed: 1.0,
                  offset: pi,
                ),
              ),
              Container(
                child: AnimatedWave(
                  color: Color(0xff1dd3bd),
                  height: 100,
                  speed: 1.4,
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

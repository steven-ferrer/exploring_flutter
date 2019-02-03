import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreenTwo extends StatefulWidget {
  @override
  _SplashScreenTwoState createState() {
    return _SplashScreenTwoState();
  }
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  @override
  void initState() {
    super.initState();

    // 10 seconds to splashscreen two
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, "/splashthree"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // stacking elements
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff622f74),
              gradient: LinearGradient(
                colors: [
                  new Color(0xff29dfb7),
                  new Color(0xff3ec7fd),
                ],
                begin: Alignment.centerRight,
                end: Alignment(-1.0, 1.0),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                child: Icon(
                  Icons.local_bar,
                  color: Colors.deepOrange,
                  size: 55.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Text(
                'SplashScreen Two',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';

import './splashscreen_custom_two.dart' show SplashScreenTwo;
import './splashscreen_custom_three.dart' show SplashScreenThree;

var routes = <String, WidgetBuilder>{
  // arbitrary string
  "/splashtwo": (BuildContext context) => SplashScreenTwo(),
  "/splashthree": (BuildContext context) => SplashScreenThree(),
};

class SplashScreenDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Custom Splashscreen Demo';

    return MaterialApp(
      title: appTitle,
      home: SplashScreenOne(),
      routes: routes,
    );
  }
}

class SplashScreenOne extends StatefulWidget {
  @override
  _SplashScreenOneState createState() {
    return _SplashScreenOneState();
  }
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  @override
  void initState() {
    super.initState();

    // 10 seconds to splashscreen two
    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed(context, "/splashtwo"));
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
                  new Color(0xff6094e8),
                  new Color(0xffde5cbc),
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
                  Icons.beach_access,
                  color: Colors.deepOrange,
                  size: 55.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Text(
                'SplashScreen One',
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

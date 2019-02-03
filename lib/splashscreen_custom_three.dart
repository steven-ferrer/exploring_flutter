import 'package:flutter/material.dart';

class SplashScreenThree extends StatefulWidget {
  @override
  _SplashScreenThreeState createState() {
    return _SplashScreenThreeState();
  }
}

class _SplashScreenThreeState extends State<SplashScreenThree> {
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
                  Icons.wb_sunny,
                  color: Colors.deepOrange,
                  size: 55.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Text(
                'SplashScreen Three',
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

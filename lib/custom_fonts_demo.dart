import 'package:flutter/material.dart';

class CustomFontsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Fonts Demo',
      theme: ThemeData(primaryColor: new Color(0xff622f74)),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Custom Fonts Demo',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Text('This is a sample text',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Charm',
                      fontSize: 30.0,
                      color: Theme.of(context).primaryColor)),
            ),
            Container(
              child: Text('This is a sample text',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Dancing Script',
                      fontSize: 30.0,
                      color: Theme.of(context).primaryColor)),
            ),
            Container(
              child: Text('This is a sample text',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Mountains of Christmas',
                      fontSize: 30.0,
                      color: Theme.of(context).primaryColor)),
            ),
          ],
        ),
      ),
    );
  }
}

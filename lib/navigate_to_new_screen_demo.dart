import 'package:flutter/material.dart';

class NavigateToNewScreenDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "Navigate to New Screen Demo";
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primaryColor: new Color(0xff622f74),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // do something
          },
        ),
        title: Text("Main Screen"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Next Screen',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          },
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
    );
  }
}

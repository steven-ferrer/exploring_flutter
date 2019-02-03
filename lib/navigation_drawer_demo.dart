import 'package:flutter/material.dart';

class NavigationDrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "Navigation Drawer Demo";
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
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // do something
            _scaffoldKey.currentState.openDrawer();
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                  child: Text(
                'Welcome Back',
                style: TextStyle(color: Colors.white),
              )),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            ListTile(
                title: Text("Menu Item 1"),
                subtitle: Text("Menu Item 1"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
              title: Text("Menu Item 2"),
              subtitle: Text("Menu Item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Menu Item 3"),
              subtitle: Text("Menu Item 3"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
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

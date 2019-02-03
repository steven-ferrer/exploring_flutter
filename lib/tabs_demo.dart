import 'package:flutter/material.dart';

class TabsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: new Color(0xff622f74)),
      home: MyTabs(),
    );
  }
}

class MyTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text('Tabs Demo'),
          // tab bar
          bottom: TabBar(
            tabs: <Widget>[
              Tab(child: Text('Tab 1')),
              Tab(child: Text('Tab 2')),
              Tab(child: Text('Tab 3'))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Card(color: Colors.yellow, child: Center(child: Text('Tab 1'))),
            Card(color: Colors.orange, child: Center(child: Text('Tab 2'))),
            Card(color: Colors.lightGreen, child: Center(child: Text('Tab 3'))),
          ],
        ),
      ),
    );
  }
}

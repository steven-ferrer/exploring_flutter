import 'package:flutter/material.dart';

class HorizontalListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal ListView Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff622f74),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Scroll View - Horizontal",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: HorizontalListViewPage(),
      ),
    );
  }
}

class HorizontalListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cards = <Widget>[];
    for (var i = 1; i <= 10; i++) {
      cards.add(MyCard(
        imageSource:
            'https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
        title: 'Heading $i',
        subtitle: 'SubHeading $i',
      ));
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: cards,
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String imageSource;
  final String title;
  final String subtitle;

  MyCard({Key key, this.imageSource, this.title, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(this.imageSource),
            ListTile(
              title: Text(this.title),
              subtitle: Text(this.subtitle),
            )
          ],
        ),
      ),
    );
  }
}

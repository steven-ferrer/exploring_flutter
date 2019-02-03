import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String appTitle = 'GridView Demo';
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primaryColor: new Color(0xff622f74),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            appTitle,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              padding: EdgeInsets.only(top: 0.5, bottom: 0.5),
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              crossAxisSpacing: 0.0, //spacing bet. grid
              children: List.generate(7, (index) {
                return Image.asset(
                  'images/image${index + 1}.jpeg',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                );
              }),
            );
          },
        ),
      ),
    );
  }
}

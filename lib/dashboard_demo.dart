import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashboardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: new Color(0xff622f74)),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard Demo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0, // vertical spacing
        mainAxisSpacing: 12.0, // horizontal spacing
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          _makeItem(Icons.graphic_eq, "Total Views", 0xffed622b),
          _makeItem(Icons.bookmark, "Bookmark", 0xff26cb3c),
          _makeItem(Icons.notifications, "Notification", 0xffff3266),
          _makeItem(Icons.attach_money, "Balance", 0xff3399fe),
          _makeItem(Icons.settings, "Settings", 0xfff4c83f),
          _makeItem(Icons.group_work, "Group Work", 0xff622f74),
          _makeItem(Icons.favorite, "Followers", 0xffad61f1),
          _makeItem(Icons.message, "Messages", 0xff7297ff),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130), // one tile occupying 2 columns
          StaggeredTile.extent(1, 250), // one tile occupying 1 column
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(2, 240),
          StaggeredTile.extent(2, 120),
        ],
      ),
    );
  }

  Material _makeItem(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196f3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // text
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          heading,
                          style: TextStyle(
                            color: Color(color),
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    // end text

                    // icon
                    Material(
                      color: Color(color),
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                    // end icon
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

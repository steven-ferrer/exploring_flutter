import 'package:flutter/material.dart';

// import './default_homepage.dart' show MyHomePage;
// import './snackbar_demo.dart' show SnackBarDemo;
// import './orientation_demo.dart' show OrientationDemo;
// import './theme_demo.dart' show ThemeDemo;
// import './splashscreen_package_demo.dart' show SplashScreenDemo;
// import './splashscreen_custom_demo.dart' show SplashScreenDemo;
// import './horizontal_listview_demo.dart' show HorizontalListViewDemo;
// import './navigate_to_new_screen_demo.dart' show NavigateToNewScreenDemo;
// import './navigation_drawer_demo.dart' show NavigationDrawerDemo;
// import './custom_fonts_demo.dart' show CustomFontsDemo;
// import './gridview_demo.dart' show GridViewDemo;
import './tabs_demo.dart' show TabsDemo;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabsDemo();
  }
}



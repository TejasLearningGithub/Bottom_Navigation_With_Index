import 'package:ex_first/Example_Third/app.dart';
import 'package:flutter/material.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState>? navigatorKey;
  final String? tabItem;

  @override
  Widget build(BuildContext context) {
    var child = Widget;
    //Widget child;
    if (tabItem == "Page1")
      child = Page1() as Type;
    else if (tabItem == "Page2")
      child = Page2() as Type;
    else if (tabItem == "Page3") child = Page3() as Type;

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child as Widget);
      },
    );
  }
}

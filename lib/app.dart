import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'detail.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      home: HomePage(),
      initialRoute: '/login',
      routes: {
    // When we navigate to the "/" route, build the FirstScreen Widget
    '/login': (context) => LoginPage(),
    // When we navigate to the "/second" route, build the SecondScreen Widget
    '/detail': (context) => DetailPage(),
  },
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}
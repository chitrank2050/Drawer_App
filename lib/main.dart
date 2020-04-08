import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './drawer.dart';
import './abyss.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS
            ? Colors.grey[50]
            : null,
      ),
      routes: <String, WidgetBuilder>{
        '/abyss': (BuildContext ctx) => AbyssRealm('Abyss'),
        '/asgard': (BuildContext ctx) => AbyssRealm('Asgard'),
        '/earth': (BuildContext ctx) => AbyssRealm('Earth'),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer App'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: SideDrawer(),
      body: Container(
        child: Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}

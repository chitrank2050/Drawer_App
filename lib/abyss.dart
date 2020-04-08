import 'package:flutter/material.dart';

class AbyssRealm extends StatelessWidget {
  final String title;

  AbyssRealm(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text('Welcome to the Realm!!!'),
        ));
  }
}

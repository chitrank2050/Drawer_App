import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Drawer'),
            ),
          ],
        ),
      ),
    );
  }
}

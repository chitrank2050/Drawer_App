import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('XXXXX XXXXX'),
              accountEmail: Text('XXXXX@YYYY.ZZ'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text(
                  'XYZ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Page 1'),
              trailing: Icon(Icons.arrow_upward),
            ),
            Divider(),
            ListTile(
              title: Text('Page 2'),
              trailing: Icon(Icons.arrow_upward),
            ),
            Divider(),
            ListTile(
              title: Text('Page 3'),
              trailing: Icon(Icons.arrow_upward),
            ),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

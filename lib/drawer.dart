import 'package:flutter/material.dart';

// import './abyss.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    void redirect(String route) {
      Navigator.of(ctx).pop();
      Navigator.of(ctx).pushNamed(route);
      // Other Way of routing, best with same page and multiple routes
      // Comment the routes from the main.dart file

      // Navigator.of(ctx).pop();
      // Navigator.of(ctx).push(
      //   MaterialPageRoute(
      //     builder: (BuildContext context) => AbyssRealm(route),
      //   ),
      // );
    }

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
              title: Text('Visit Abyss'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => redirect('/abyss'),
            ),
            Divider(),
            ListTile(
              title: Text('Visit Asgard'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => redirect('/asgard'),
            ),
            Divider(),
            ListTile(
              title: Text('Return to earth'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => redirect('/earth'),
            ),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(ctx).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

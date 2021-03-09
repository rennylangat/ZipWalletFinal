import 'package:flutter/material.dart';
import 'package:zipwallet/shared/app_colors.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("ZipWallet"),
              decoration: BoxDecoration(
                color: blueMain,
              ),
            ),
            ListTile(
              title: Text('Facebook'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Twitter"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zipwallet/shared/app_colors.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          menu(context)
        ],
      ),
    );
  }
  Widget menu(context){
    return Column(
      children: <Widget>[
        Text("This is a text"),
      ],
    );
  }
}

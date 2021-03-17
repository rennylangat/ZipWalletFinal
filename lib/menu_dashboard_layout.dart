import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            menu(context),
          ],
        ),
      ),
    );
  }
  Widget menu(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child:Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Follow us on Facebook",style: TextStyle(fontSize: 22,color: Colors.white),),
            Text("Follow us on Instagram",style: TextStyle(fontSize: 22,color: Colors.white),),
            Text("Follow us on Twitter",style: TextStyle(fontSize: 22,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zipwallet/screens/login.dart';

Widget card(context, String image, String imageType, String text) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(Login.routeName);
    },
     child: Container(
       margin: EdgeInsets.all(15),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.all(
           Radius.circular(20),
         ),
         boxShadow: [
           BoxShadow(
             color: Colors.white60,
             blurRadius: 20.0,
             spreadRadius: 0.0,
             offset: Offset(0.0,0.0),
           )
         ],
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           SizedBox(
             height: 20,
           ),
           Text(
             text,
             style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
           )
         ],
       ),
     ),
  );
}

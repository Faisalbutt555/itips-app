import 'package:flutter/material.dart';
import 'package:itipsfinal/receiver/receiver_drawer.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';
class Maindrawer extends StatefulWidget {
  @override
  _MaindrawerState createState() => _MaindrawerState();
}

class _MaindrawerState extends State<Maindrawer> {
  final controller=PageController(initialPage:2);
 int key=0;
 List<Widget> pageview=[Senderdrawer(),Receiverdrawer()];
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child:PageView(
      controller: controller,
   
    children: <Widget>[
      Senderdrawer(),
       Receiverdrawer()
        ]
        ),
    );
  }
}
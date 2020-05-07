import 'dart:async';

import 'package:flutter/material.dart';

import 'mainloginscreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 4), onloadingData);
  }

  onloadingData() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => 
      Mainloginscreen()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff3A3F58),
          ),
          child:Container(
            width: MediaQuery.of(context).size.width/2,
            child:  Image.asset("images/splashscreenimg.png",)
          ),
        )
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/receiver/addpromotion.dart';
import 'package:itipsfinal/receiver/addservices.dart';
import '../approuteclass.dart';
class FancyFab extends StatefulWidget {
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  FancyFab({this.onPressed, this.tooltip, this.icon});
  @override
  _FancyFabState createState() => _FancyFabState();
}

class _FancyFabState extends State<FancyFab>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;
  
  @override
  initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
     // begin: primaryColor,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }
  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }
  
  
  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }
  /*  Widget add() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  } */
  Widget image() {
    return InkWell(
      onTap: (){
         AppRoutes.push(context, Addpromotion());
      },
      child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text('Add Promotion',
        style: TextStyle(
          color: whitecolor,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),),
        
    Container(

      margin: EdgeInsets.only(top:20),
      height: 50,
      width: 50,
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: null,
        onPressed: () {
         
        },
  
child: Image.asset(
          'images/tag.png',
          scale: 5,
        ),
      ),
    ),
      ],
    ));

  }
  Widget inbox() {
    return InkWell(
      onTap: (){
                 AppRoutes.push(context, Addservices());
      },
      child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
               Text('Add Services',
        style: TextStyle(
          color: whitecolor,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),),
           Container(
     
      child:
     FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: null,
       onPressed: (){},
       
       // AppRoutes.push(context, AddInventory()),
       
    foregroundColor: Colors.black,

        
        child: 
        Image.asset(
          'images/addservices.png',
          scale: 05,
        ),
      ),
      
      
 
    )
              ],
    ));
 
  }

  Widget toggle() {
    return Container(
      child: FloatingActionButton(
         backgroundColor: Color(0xffEE6A59),
        heroTag: null,
       
        onPressed: animate,
        //tooltip: 'Toggle',
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          color: Colors.white,
          progress: _animateIcon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:120,left: 20),
      child: Column(
     mainAxisAlignment: MainAxisAlignment.end,
     crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        /* Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 3.0,
            0.0,
          ),
          child: add(),
        ), */
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 2.0,
            0.0,
          ),
          child: image(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value,
            0.0,
          ),
          child: inbox(),
        ),
        toggle(),
      ],
    )
    ); 
  }
}





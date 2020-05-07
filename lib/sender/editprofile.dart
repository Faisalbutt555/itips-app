import 'package:flutter/material.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
    final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: sendercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:20),
        child: SenderAppbar(context,false, sendercaffoldKey ,'Edit Profile',false),
        )
        ),
         drawer: Senderdrawer(),
      body: SingleChildScrollView(
        child:Container(
        margin: EdgeInsets.only(left:20,top: 30,right: 20),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Personal Detail',
                style: TextStyle(
                  color: greycolor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                ),)
              ],
            ),
            SizedBox(height: 30,),
            centerpart(),
            SizedBox(height: MediaQuery.of(context).size.height*.30,),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  InkWell(
                      onTap: (){},
                      child:Container(
                        decoration: BoxDecoration(
                            color: greycolor,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        height: MediaQuery.of(context).size.height/14,
                        width: MediaQuery.of(context).size.width/1.7,
                        child: Center(
                          child:Text('UPDATE',
                            style: TextStyle(
                                color: whitecolor,
                                fontWeight: FontWeight.w800,

                                fontSize: 16
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      )
    )
    );
  }
  Widget bottompart(){
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
  InkWell(
    onTap: (){},
    child:Container(
     decoration: BoxDecoration(
        color: greycolor,
      borderRadius: BorderRadius.circular(7)
      ),
    height: MediaQuery.of(context).size.height/14,
    width: MediaQuery.of(context).size.width/1.7,
    child: Center(
      child:Text('UPDATE',
      style: TextStyle(
        color: whitecolor,
      fontWeight: FontWeight.w800,
        
        fontSize: 16
      ),
  ),
    ),
  ))
      ],
    ),
  ) ;
 
  }
  Widget centerpart(){
return Column(
children: <Widget>[
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
Text('Username',
  style: TextStyle(
    fontSize: 12,
    color: Colors.grey,

  ),),
    ],
  ),
  
  TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: 'johndoe',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  18,
        fontWeight: FontWeight.w900,
      ),
      suffixIcon: Image.asset('images/tick.png',
      scale: 3,)
    ),
  
  ),
  SizedBox(
    height: 7,
  ),  
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
Text('Phone Number',
  style: TextStyle(
    fontSize: 12,
    color: Colors.grey,

  ),),
    ],
  ),
  
  TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: '+01 0000000012356',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  18,
        fontWeight: FontWeight.bold,
      ),
      suffixIcon: Image.asset('images/tick.png',
      scale: 3,)
    ),
  
  ),
  SizedBox(height:7),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
Text('Email',
  style: TextStyle(
    fontSize: 12,
    color: Colors.grey,

  ),),
    ],
  ),
  
  TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: 'johndoe@gmail.com',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  18,
        fontWeight: FontWeight.bold,
      ),
      suffixIcon: Image.asset('images/tick.png',
      scale: 3,)
    ),
  
  ),
  SizedBox(
    height: 7,
  ),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
Text('Adress',
  style: TextStyle(
    fontSize: 12,
    color: Colors.grey,

  ),),
    ],
  ),
  
  TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: 'New York, USA',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  18,
        fontWeight: FontWeight.bold,
      ),
      suffixIcon: Image.asset('images/tick.png',
      scale: 3,)
    ),
  
  )

],
);
  }
  
}
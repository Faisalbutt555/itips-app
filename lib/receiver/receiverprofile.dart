

import 'package:flutter/material.dart';

import 'package:itipsfinal/receiver/pagetwo.dart';
import 'package:itipsfinal/receiver/pageone.dart';
import 'package:itipsfinal/receiver/receivereditprof.dart';



import '../approuteclass.dart';
import '../constantcolors.dart';
class ReceiverMyprofile extends StatefulWidget {
  @override
  _ReceiverMyprofileState createState() => _ReceiverMyprofileState();
   
}

class _ReceiverMyprofileState extends State<ReceiverMyprofile> {
    final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();
 final controller=PageController(initialPage: 1);
 
 List<Widget> pageview=[Pageone(),Pagetwo()];
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
 PageView(
  
        children: <Widget>[
        
          Pageone(),Pagetwo()
        ]
        ),
        cardpart(),

        Padding(
            padding: EdgeInsets.only(top: 20),
            child: editprofile()),
        ],
      )
     
      );
  }
   Widget cardpart(){

    return Card(
      elevation: 9,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
      ),
    margin: EdgeInsets.only(top:270,left: 15,right: 15),
child:Container(
 // margin: EdgeInsets.only(top:5,bottom: 5),
  height: MediaQuery.of(context).size.height/3.2,
  width: MediaQuery.of(context).size.width,
  child: Padding(padding: EdgeInsets.only(left:13,top: 10),
  child:
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text( 'Business Detail',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
       ) ),
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left:3,top: 5),
          child:Text('Place of Work',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w100
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3,right: 13),
            height: MediaQuery.of(context).size.height/12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'John´s Pub',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,

                ),
                contentPadding: EdgeInsets.only(left:10,top: 0),
             
              ),
            ),
          )
              ],
      
      
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left:3,top: 5),
          child:Text('Position',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w100
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3,right: 13),
            height: MediaQuery.of(context).size.height/12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'Bartender',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,

                ),
                contentPadding: EdgeInsets.only(left:10,top: 0),
             
              ),
            ),
          )
              ],
      
      
      )
      
      
    ],
  ),

)),
    );
  }
  Widget editprofile(){
    return 
    Card(
      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
      elevation: 10,
      margin: EdgeInsets.only(left:20,right: 20,top: 510),
      child: InkWell(
        onTap: (){
AppRoutes.push(context, Receivereditprof());
  },
        child: Container(
      padding: EdgeInsets.only(left:16,right:16),
  height: MediaQuery.of(context).size.height/9.4,
 child: Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    
Row(
  children: <Widget>[
    Image.asset('images/user.png',
    scale: 3,),
    SizedBox(width: 29,),
    Text('EDIT PROFILE',
    style: TextStyle(
      color: greycolor,
      fontSize: 14,
      fontWeight: FontWeight.bold
    ),
    )
  ],
),
Icon(Icons.keyboard_arrow_right,
color:greycolor,

)
    ],
  ),
),
      ),
    );
  }

   
  }
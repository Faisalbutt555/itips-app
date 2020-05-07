import 'package:flutter/material.dart';
import 'package:itipsfinal/receiver/receivereditprof.dart';

import '../approuteclass.dart';
import '../constantcolors.dart';
class Pagetwo extends StatefulWidget {
  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        topparttwo(),
       
      //  cardpart(),
       // editprofile()
      ],
      
    );
  }
  Widget editprofile(){
    return 
    InkWell(
  onTap: (){
AppRoutes.push(context, Receivereditprof());
  },
  child:Card( 

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
  elevation: 10,
  margin: EdgeInsets.only(left:20,right: 20,top: 510),
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
),));
  }
  Widget cardpart(){
    return Card(
      elevation: 9,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
      ),
    margin: EdgeInsets.only(top:270,left: 15,right: 15),
child:Container(
  margin: EdgeInsets.only(top:5,bottom: 5),
  height: MediaQuery.of(context).size.height/3,
  width: MediaQuery.of(context).size.width,
  child: Padding(padding: EdgeInsets.only(left:13,top: 10),
  child:
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text( 'Buisness Detail',
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
                hintText: 'john´s Pub',
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
   Widget topparttwo(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height/2.4,
     decoration: BoxDecoration(
        color: greycolor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16)
        )
     ),
     child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
Padding(padding: EdgeInsets.only(left:0,top: 40),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
  children: <Widget>[
IconButton(icon: Icon(Icons.arrow_back_ios,
color: whitecolor,), 
onPressed:(){
  AppRoutes.pop(context);
}

),

Text('Buisness Profile ',
style: TextStyle(
  color:whitecolor,
      fontWeight: FontWeight.bold,
      fontSize: 16
),),
Container(
  margin: EdgeInsets.only(right:20),
)

  ],
),
),
SizedBox(height:10),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Container(
    height:MediaQuery.of(context).size.height/10,
    width: MediaQuery.of(context).size.width/5.2,
decoration: BoxDecoration(
  image: DecorationImage(
    image:AssetImage('images/burgermain.png')),
  border: Border.all(
    color: whitecolor,
    width: .8
  ),
borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
      InkWell(
        onTap: (){},
        child: Image.asset('images/camera.png',
        scale:4,
        ),
      )
      ],
    ),
   
  )
],
),
SizedBox(height:10),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text('Broad Way',
    style: TextStyle(
      color: whitecolor,
      fontSize: 18,
      fontWeight: FontWeight.bold
    ),
    )
  ],
),


SizedBox(height:7,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.location_on,
    color: whitecolor,size: 18,),
    SizedBox(width: 4,),
    Text('NewYork, USA',
    style: TextStyle(
      color: whitecolor,
      fontSize: 12,
      fontWeight: FontWeight.normal
    ),
    
    ),
     SizedBox(width: 14,),
    
    
  ],
),
Padding(
  padding: EdgeInsets.only(top:13),
child: 

Row(
  mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Container(
decoration: BoxDecoration(
  shape: BoxShape.circle,
  border: Border.all(
    color: whitecolor,
    width: 1
  )
),
    height: 12,
    width: 12,
 
  ),
  SizedBox(width:10),
    Container(
decoration: BoxDecoration(
  shape: BoxShape.circle,
color: whitecolor
),
    height: 12,
    width: 12,

  )
],
)
),
  




  ],
),

    );
  }

}
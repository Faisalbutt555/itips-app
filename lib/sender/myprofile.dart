import 'package:flutter/material.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/sender/editprofile.dart';
class Myprofile extends StatefulWidget {
  @override
  _MyprofileState createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
 toppart(),
Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
Padding(padding: EdgeInsets.only(left:0,top: 30),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
  children: <Widget>[
IconButton(icon: Icon(Icons.arrow_back_ios,
color: whitecolor,), 
onPressed:(){
  AppRoutes.pop(context);
}

),

Text('My Profile',
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
SizedBox(height:20),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Container(
    height:MediaQuery.of(context).size.height/10,
    width: MediaQuery.of(context).size.width/5.2,
decoration: BoxDecoration(
  image: DecorationImage(
    image:AssetImage('images/senderinnerdrawer.png')),
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
    Text('johndoe',
    style: TextStyle(
      color: whitecolor,
      fontSize: 18,
      fontWeight: FontWeight.bold
    ),
    )
  ],
),
SizedBox(height:04),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text('johndoe@gmail.com',
    style: TextStyle(
      color: whitecolor,
      fontSize: 16,
      fontWeight: FontWeight.normal
    ),
    )
  ],
),
SizedBox(height: 8,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.location_on,
    color: whitecolor,size: 18,),
    SizedBox(width: 4,),
    Text('NewYork, USA',
    style: TextStyle(
      color: whitecolor,
      fontSize: 16,
      fontWeight: FontWeight.normal
    ),
    
    ),
     SizedBox(width: 14,),
     Icon(Icons.call,
    color: whitecolor,size: 18,),
    SizedBox(width: 4,),
    Text('+1 00000-0000-000',
    style: TextStyle(
      color: whitecolor,
      fontSize: 13,
      fontWeight: FontWeight.normal
    ),
    
    ),
  ],
),

SizedBox(height: 25,),
Card( 
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
  elevation: 10,
  margin: EdgeInsets.only(left:20,right: 20,top: 45),
  child: Container(
    padding: EdgeInsets.only(left:16,right:16),
  height: MediaQuery.of(context).size.height/9.0,
 child: Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    
Row(
  children: <Widget>[
    Image.asset('images/food.png',
    scale: 3,),
    SizedBox(width:22,),
    Text('Maximum Tip Given',
    style: TextStyle(
      color: greycolor,
      fontSize: 14,
      fontWeight: FontWeight.bold
    ),
    )
  ],
),
Row(
  children: <Widget>[
     Text('130',
    style: TextStyle(
      color: greycolor,
      fontSize: 14,
      fontWeight: FontWeight.bold
    ),
    ),
    
    SizedBox(width: 7,),
    Image.asset('images/eurocurrency.png',
    scale: 4,),
   
  ],
)
    ],
  ),
),),
GestureDetector(
  onTap: (){
AppRoutes.push(context, EditProfile());
  },
  child:Card( 
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
  elevation: 10,
  margin: EdgeInsets.only(left:20,right: 20,top: 15),
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
),))
  ],
)
 
          ],
        )
       
      
      
    );
  }
  Widget toppart(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height/2.1,
     decoration: BoxDecoration(
        color: greycolor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16)
        )
     ),

    );
  }
 
  
}
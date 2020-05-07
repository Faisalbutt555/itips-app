import 'package:flutter/material.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/sender/favourites.dart';
import 'package:itipsfinal/sender/myprofile.dart';
import 'package:itipsfinal/sender/paymentmethod.dart';
import 'package:itipsfinal/sender/senderhome.dart';
import 'package:itipsfinal/sender/senderqrcode.dart';
import 'package:itipsfinal/sender/transactionhistory.dart';
import '../constantcolors.dart';
import '../mainloginscreen.dart';
import 'myprofile.dart';
class Senderdrawer extends StatefulWidget {
  @override
  _SenderdrawerState createState() => _SenderdrawerState();
}

class _SenderdrawerState extends State<Senderdrawer> {
  @override
  Widget build(BuildContext context) {
    return 
    Drawer(
child: Container(
height: MediaQuery.of(context).size.height,
width: MediaQuery.of(context).size.width,
child:Column(
children: <Widget>[ 
  Container(
    
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height/2.7,
    child: Stack(
      children: <Widget>[
        Card(
          shape:new BeveledRectangleBorder(
            borderRadius:BorderRadius.only(
              bottomLeft: Radius.elliptical(154, 34),
            bottomRight: Radius.elliptical(154, 34)
)
          ),
child:Container(
        height: MediaQuery.of(context).size.height/2.7,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
Image.asset('images/senderinnerdrawer.png',
   scale: 4.5,),
   SizedBox(height: 10,),
   Text('John Doe',
   style: TextStyle(
     fontSize: 24,
     fontWeight: FontWeight.bold,
     color: Color(0xff3A3F58)

   ),),
 /*  SizedBox(height: 05,),
   Text('My Profile',
    style: TextStyle(
     fontSize: 12,
     fontWeight: FontWeight.bold,
     color: Colors.grey

   ),),
   SizedBox(height: 04,),
 */ /* Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Container(
        height: MediaQuery.of(context).size.height/80,
        width:MediaQuery.of(context).size.width/30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: greycolor
          )
        ),
      

       Container(
         margin: EdgeInsets.only(left:5),
        height: MediaQuery.of(context).size.height/80,
        width:MediaQuery.of(context).size.width/30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:Border.all(
              width: 1,
              color:Colors.grey
            )
        ),
      ),
        ],
   )*/
          ],
        ),
        )
         ) ],
    ),
  ),
 

  InkWell(
    onTap: (){
AppRoutes.push(context, Senderhome());
    },
    child:Padding(padding: EdgeInsets.only(top:50,left: 20),
child: Row(
  
  children: <Widget>[
    Image.asset('images/homeicon.png',
    scale: 2.5,),
    SizedBox(width: 16,),
    Text('Home',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),
  GestureDetector(
    onTap: (){
   AppRoutes.push(context,Myprofile());
    },
    child:Padding(padding: EdgeInsets.only(top:25 ,left: 20),
child: Row(
  
  children: <Widget>[
    Image.asset('images/myprofileicon.png',
    scale: 3.5,),
    SizedBox(width: 16,),
    Text('My Profile',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),
  GestureDetector(
    onTap: (){
    AppRoutes.push(context, Senderqrcode());
    },
    child:Padding(padding: EdgeInsets.only(top:25,left: 20),
child: Row(
  children: <Widget>[
    Image.asset('images/scan.png',
    scale: 3.5,),
    SizedBox(width: 16,),
    Text('Send tip',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),
  InkWell(
  onTap: (){
  AppRoutes.push(context, Favourites());

},
    child:Padding(padding: EdgeInsets.only(top:25,left: 20),
child:Row(
  
  children: <Widget>[
    Icon(Icons.favorite),
    SizedBox(width: 16,),
    Text('Favourites',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),
  InkWell(
    onTap: (){
      AppRoutes.push(context, Transactionhistory());
    },
    child:Padding(padding: EdgeInsets.only(top:25,left: 20),
child: Row(
  
  children: <Widget>[
    Image.asset('images/withdrawicon.png',
    scale: 3.5,),
    SizedBox(width: 16,),
    Text('Transaction History',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),
  InkWell(
    onTap: (){
      AppRoutes.push(context, Paymentmethod());
    },
    child:Padding(padding: EdgeInsets.only(top:25,left: 20),
child: Row(
  
  children: <Widget>[
    Image.asset('images/paymentmethod.png',
    scale:3.5,),
    SizedBox(width: 16,),
    Text('Payment Method',
    style: TextStyle(
      color: Color(0xff000000),
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),
  InkWell(
    onTap: (){
      AppRoutes.push(context, Mainloginscreen());
    },
    child:Padding(padding: EdgeInsets.only(top:25,left: 20),
child: Row(
  children: <Widget>[
    Image.asset('images/logout.png',
    scale: 3.5,),
    SizedBox(width: 16,),
    Text('Log out',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),

 
],
    
  ), 
),
      
    
    );

  }
  
}
import 'package:flutter/material.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/receiver/receiverprofile.dart';
import 'package:itipsfinal/receiver/receiverqecode.dart';
import 'package:itipsfinal/receiver/withdraw.dart';
import 'package:itipsfinal/sender/paymentmethod.dart';
import 'package:itipsfinal/sender/senderhome.dart';

import '../constantcolors.dart';
import '../mainloginscreen.dart';
class Receiverdrawer extends StatefulWidget {
  @override
  _ReceiverdrawerState createState() => _ReceiverdrawerState();
}

class _ReceiverdrawerState extends State<Receiverdrawer> {
  final controller=PageController(initialPage:2);
  int key=0;

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
    child:Stack(
      children: <Widget>[
        Card(
          shape:new BeveledRectangleBorder(
              borderRadius:BorderRadius.only(
                  bottomLeft: Radius.elliptical(154, 34),
                  bottomRight: Radius.elliptical(154, 34)
              )
          ),
          child:
    PageView(
        controller: controller,

        children: <Widget>[
         _myProfile(),
          _businessProfile(),
          ]
    ))]),



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
      fontSize: 16
  ),)
  ],
),)),
  InkWell(
    onTap: (){
   AppRoutes.push(context,ReceiverMyprofile());
    },
    child:Padding(padding: EdgeInsets.only(top:25,left: 20),
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
  InkWell(
    onTap: (){
    AppRoutes.push(context, Receiverqrcode());
    },
    child:Padding(padding: EdgeInsets.only(top:25,left: 20),
child: Row(
  children: <Widget>[
    Image.asset('images/scan.png',
    scale: 3.5,),
    SizedBox(width: 16,),
    Text('My QR Code',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),
  InkWell(
  onTap: (){
  AppRoutes.push(context, Withdraw());

},
    child:Padding(padding: EdgeInsets.only(top:25,left: 20),
child:Row(
  
  children: <Widget>[
    Image.asset('images/atm.png',
    scale: 3.7,),
    SizedBox(width: 16,),
    Text('With Draw',
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
    Text('Select Payment Method',
    style: TextStyle(
      color: Color(0xff000000),
      fontWeight: FontWeight.bold,
      fontSize: 18
  ),)
  ],
),)),
  GestureDetector(
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

  Widget _myProfile(){
    return  Container(
        height: MediaQuery.of(context).size.height/2.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
Image.asset('images/senderinnerdrawer.png',
   scale: 4.5,),
   SizedBox(height: 10,),
   Text('john Doe',
   style: TextStyle(
     fontSize: 24,
     fontWeight: FontWeight.bold,
     color: Color(0xff3A3F58)

   ),),
   SizedBox(height: 05,),
   Text('My Profile',
    style: TextStyle(
     fontSize: 12,
     fontWeight: FontWeight.bold,
     color: Colors.grey

   ),),
   SizedBox(height: 04,),
   Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
              margin: EdgeInsets.only(left:5),

              height: MediaQuery.of(context).size.height/80,
              width:MediaQuery.of(context).size.width/30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: greycolor
              )
          ),

       Container(
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
   )
          ],
        ),
    );

  }
  Widget _businessProfile(){
    return  Container(
              height: MediaQuery.of(context).size.height/2.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/senderinnerdrawer.png',
                    scale: 4.5,),
                  SizedBox(height: 10,),
                  Text('john Doe',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3A3F58)

                    ),),
                  SizedBox(height: 05,),
                  Text('Business Profile',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey

                    ),),
                  SizedBox(height: 04,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[



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
                      Container(
                          height: MediaQuery.of(context).size.height/80,
                          width:MediaQuery.of(context).size.width/30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: greycolor
                          )
                      ),
                    ],
                  )
                ],
              ),

    );

  }

  Widget twobuttons(){
    return Container(
child: Row(
  children: <Widget>[
    
  ],
),
    );
  }
  
}
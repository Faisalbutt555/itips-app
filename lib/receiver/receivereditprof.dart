import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderhome.dart';

import '../constantcolors.dart';
import '../dropdownfields.dart';
class Receivereditprof extends StatefulWidget {
  @override
  _ReceivereditprofState createState() => _ReceivereditprofState();
}

class _ReceivereditprofState extends State<Receivereditprof> {
      final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();
      String Categorydropdown;
      File _image;

      Future getImage() async {
        var image = await ImagePicker.pickImage(source: ImageSource.gallery);

        setState(() {
          _image = image;
        });
      }
      @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: bottompart(),
        key: sendercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:20),
        child: SenderAppbar(context,false, sendercaffoldKey ,'Edit Profile' ,false),
        )
        ),
         body: ListView(
           children: <Widget>[
         Container(
        margin: EdgeInsets.only(left:20,top: 30,right: 20),
       
        width: MediaQuery.of(context).size.width,
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
            SizedBox(height: 15,),
            centerpart(),
            SizedBox(height: 20,),
                   Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Business Detail',
                style: TextStyle(
                  color: greycolor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                ),)
              ],
            ),
            SizedBox(height:7),
            buisnesspart(),
          SizedBox(height: 10,),
           Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Upload Profile Images',
                style: TextStyle(
                  color: greycolor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                ),)
              ],
            ),
            Padding(
            padding: EdgeInsets.only(left:4,top: 9,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
   Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
 Column(
          children: <Widget>[
         Container(
                         height: MediaQuery.of(context).size.height/6.8,
                         width: MediaQuery.of(context).size.width/2.9,
                        child:DottedBorder(
                        color: greycolor,
                        strokeWidth: .8,
                  child:Center(
                  child:Image.asset('images/dotbackimage.png',
                          scale:2.6,
                        ),
                      )) ),

            GestureDetector(
              onTap: (){
                getImage();
              },
              child: Container(
                        margin: EdgeInsets.only(top:5),
                        width:MediaQuery.of(context).size.width/2.9,
                        height: MediaQuery.of(context).size.height/17,
                        child:RaisedButton(onPressed: (){},
                        color: buttoncolor,
                       child: Text('Buisness Profile',
                       style: TextStyle(
                         color: whitecolor,
                         fontSize:10,
                         //fontWeight: FontWeight.w400
                       ),),
                         ) ),
            )
          ],
        ),


          ],
        ),
        
           Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
 Column(
          children: <Widget>[
         Container(
                         height: MediaQuery.of(context).size.height/6.8,
                         width: MediaQuery.of(context).size.width/2.9,
                        child:DottedBorder(
                        color: greycolor,
                        strokeWidth: .8,
                  child:Center(
                  child:Image.asset('images/dotbackimage.png',
                          scale:2.6,
                        ),
                      )) ),
                      GestureDetector(
                        onTap: (){
                          getImage();

                        },
                        child: Container(
                        margin: EdgeInsets.only(top:5),
                        width:MediaQuery.of(context).size.width/2.9,
                        height: MediaQuery.of(context).size.height/17,
                        child:RaisedButton(onPressed: (){},
                        color: buttoncolor,
                     child: Text('User Profile',
                     style: TextStyle(
                         color: whitecolor,
                         fontSize:10,
                         //fontWeight: FontWeight.w400
                     ),),
                         ) ),
                      )
          ],
        ),


          ],
        )
        
        
              ],
            )
          ),
          Container(
            margin: EdgeInsets.only(top:30),
          )
          
           ])
 
           )  ],
            )
            
      
        
     
    
           
     );
        
      
      
    
  }
   Widget bottompart(){
  return Container(
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
    style: TextStyle(
      color: Color(0xff667980),
      fontSize:  18,
      fontWeight: FontWeight.bold,
    ),

    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: 'Johndoe',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  15,
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
    style: TextStyle(
      color: Color(0xff667980),
      fontSize:  18,
      fontWeight: FontWeight.bold,
    ),
    keyboardType: TextInputType.number,
    inputFormatters: <TextInputFormatter>[
      WhitelistingTextInputFormatter.digitsOnly
    ], // Only numbers can be entered
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
    style: TextStyle(
      color: Color(0xff667980),
      fontSize:  18,
      fontWeight: FontWeight.bold,
    ),

    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: 'johndoe@gmail.com',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  16,
        fontWeight: FontWeight.bold,
      ),

    ),
  
  ),
  SizedBox(
    height: 7,
  ),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
Text('Address',
  style: TextStyle(
    fontSize: 12,
    color: Colors.grey,

  ),),
    ],
  ),
  
  TextFormField(
    style: TextStyle(
      color: Color(0xff667980),
      fontSize:  18,
      fontWeight: FontWeight.bold,
    ),

    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: 'New York, USA',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  16,
        fontWeight: FontWeight.bold,
      ),
   
    ),
  
  )

],
);
  }
  Widget buisnesspart(){
return Column(
children: <Widget>[
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
Text('Address',
  style: TextStyle(
    fontSize: 12,
    color: Colors.grey,

  ),),
    ],
  ),
  
  Container(
    width:MediaQuery.of(context).size.width*.9,
    height: 50,
    decoration: new BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.black54.withOpacity(0.4)),
        borderRadius: new BorderRadius.all(Radius.circular(5.0),
        )
    ),
    child: _Category(context),
  ),
  SizedBox(
    height: 7,
  ),  
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
Text('Buisness Name',
  style: TextStyle(
    fontSize: 12,
    color: Colors.grey,

  ),),
    ],
  ),
  
  TextFormField(

    style: TextStyle(
      color: Color(0xff667980),
      fontSize:  18,
      fontWeight: FontWeight.bold,
    ),
    decoration: InputDecoration(

      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: 'Buisness Name',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  16,
        fontWeight: FontWeight.bold,
      ),
      
    ),
  
  ),
  SizedBox(height:7),
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
    style: TextStyle(
      color: Color(0xff667980),
      fontSize:  18,
      fontWeight: FontWeight.bold,
    ),

    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(left:20),
      border: OutlineInputBorder(borderSide: BorderSide(
        color: greycolor,
        width: 5
      )),
      hintText: 'New York, USA',
      hintStyle: TextStyle(
color: Color(0xff667980),
        fontSize:  16,
        fontWeight: FontWeight.bold,
      ),
      suffixIcon:IconButton(icon: Icon(Icons.location_on,
       color: Color(0xffD5D5D5),
      ), onPressed: (){
        AppRoutes.push(context, Senderhome());
      }),

      
    ),
  
  ),
 

],
);
  }
      Widget _Category(BuildContext context) {
        return DropDownFormField(
          hintText: 'Category',
          value: Categorydropdown,
          onSaved: (value) {
            setState(() {
              Categorydropdown = value;
            });
          },
          onChanged: (value) {
            setState(() {
              Categorydropdown = value;
            });
          },
          dataSource: [
            {


              "display": 'Commerical',
              "value":  'Commerical',
            },
            {
              "display":  'Domestic',
              "value":  'Domestic',
            },
            {
              "display":  'Rulal',
              "value":  'Rulal',
            },
            {
              "display":  'Partnership',
              "value":  'Partnership',
            },
            {
              "display":  'other',
              "value":  'other',
            },


          ],

          textField: 'display',
          valueField: 'value',
        );
      }

}
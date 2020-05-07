import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:itipsfinal/receiver/receiver_drawer.dart';
import 'package:itipsfinal/receiver/receiverappbar.dart';

import '../constantcolors.dart';
class Receiverqrcode extends StatefulWidget {
  @override
  _ReceiverqrcodeState createState() => _ReceiverqrcodeState();
}

class _ReceiverqrcodeState extends State<Receiverqrcode> {
      final GlobalKey<ScaffoldState> receivercaffoldKey = new GlobalKey<ScaffoldState>();


   String barcode;

 scan() async {
    await BarcodeScanner?.scan().then((onValue)
      {
        if(onValue==null)
        {
        }
        else
        {
 setState(() =>  barcode= onValue);
 print(barcode);
        }
      }).catchError((onError)
      {
        print(onError);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottompart(),
       key: receivercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:0),
        child: ReceiverAppbar(context,false, receivercaffoldKey ,'My QR Code',false)
      
      ) ),
         drawer: Receiverdrawer(),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height:20),
            txtfeildclass(),
            SizedBox(height:02),
            scanpart(),
            mycodetxtfeild(),
            sharelink(),
            Container(
              margin: EdgeInsets.only(top:50),
            )
          ],
        ),
      ),
    );
  }
  Widget mycodetxtfeild(){
    return  Card( 
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
 
  margin: EdgeInsets.only(left:28,right: 28,top:13  ),
  child: Container(
    
    padding: EdgeInsets.only(left:15,right:15),
  height: MediaQuery.of(context).size.height/13,
 child: Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    
   Text('Tip Amount',
    style: TextStyle(
      color: greycolor,
      fontSize: 16,
      fontWeight: FontWeight.bold
    ),
    ),
Text('012312',
    style: TextStyle(
      color: greycolor,
      fontSize: 14,
      fontWeight: FontWeight.bold
    ),
    ),
    
    ],
  ),
),);
  }
  Widget sharelink(){
    return Card(
      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
      margin: EdgeInsets.only(left:28,right: 28,top:13  ),
child: Container(
  margin: EdgeInsets.only(),
  height: MediaQuery.of(context).size.height/8,
  width: MediaQuery.of(context).size.width,
  child:
  Padding(padding: EdgeInsets.only(top:10),
  child:Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left:10),
      child:   Text('Share Links',
    style: TextStyle(
      color: greycolor,
      fontSize: 16,
      fontWeight: FontWeight.bold
    ),
    ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/facebook.png.png',
          scale: 4,),
          SizedBox(width:5),
             Image.asset('images/chatarow.png.png',
             scale: 3,),
          SizedBox(width:5),
             Image.asset('images/whatsapp.png.png',
             scale: 4,),
       
          
        ],
      ),

    ],
  ),
),
    ));
  }
    Widget scanpart(){
    return InkWell(
      onTap: (){
        scan();
      },
      child: 
      Container(
        margin: EdgeInsets.only(left:0,right:0,top: 20),
     decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(6)
     ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2.3,
child:Image.asset('images/qrcode.png')
     ) );
  
  }
  
   Widget txtfeildclass(){
    return Card(
      
      margin: EdgeInsets.only(left:10,right:10,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: 10,
      child: 
  
    Container(
      decoration: BoxDecoration(
        color:whitecolor,
        borderRadius: BorderRadius.circular(23),
      
),

      height: MediaQuery.of(context).size.height/13,
      width:MediaQuery.of(context).size.width,
      child: TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
        top: 1,
        left:110
        ),
        border: InputBorder.none,
          hintText:'Tips Amount',
          hintStyle: TextStyle(
            color:greycolor,fontSize: 14,fontWeight: FontWeight.bold,
        ),
       
       
          )
        ),
      )  );
  }

   Widget bottompart(){
  return Container(
    height: MediaQuery.of(context).size.height/10,
    width:MediaQuery.of(context).size.width,
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
    width: MediaQuery.of(context).size.width/2.3,
    child: Center(
      child:Text('Print QR',
      style: TextStyle(
        color: whitecolor,
      fontWeight: FontWeight.w300,
        
        fontSize: 16
      ),
  ),
    ),
  )),
       SizedBox(width: 10,), 
  InkWell(
    onTap: (){},
    child:Container(
     decoration: BoxDecoration(
        color: greycolor,
      borderRadius: BorderRadius.circular(7)
  ),
    height: MediaQuery.of(context).size.height/14,
    width: MediaQuery.of(context).size.width/2.3,
    child: Center(
      child:Text('Generate New QR',
      style: TextStyle(
        color: whitecolor,
      fontWeight: FontWeight.w400,
        
        fontSize: 16
      ),
  ),
    ),
  ))
      ],
    ),
  ) ;
 
  }

}
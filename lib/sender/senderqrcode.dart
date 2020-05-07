import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/sender/paymentmethod.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';
import '../constantcolors.dart';
class Senderqrcode extends StatefulWidget {
  
  @override
  _SenderqrcodeState createState() => _SenderqrcodeState();
}

class _SenderqrcodeState extends State<Senderqrcode> {
    final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();
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
      key: sendercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:0),
        child: SenderAppbar(context,false, sendercaffoldKey ,'Send Tip',false),
        )
        ),
         drawer: Senderdrawer(),
         body:SingleChildScrollView(
           child:Column(
           children: <Widget>[
             scanpart(),
             SizedBox(height:20),
             txtfeildclass(),
             Card( 
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
 
  margin: EdgeInsets.only(left:28,right: 28,top: 5),
  child: Container(
    
    padding: EdgeInsets.only(left:40,right:80),
  height: MediaQuery.of(context).size.height/13,
 child: Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    
Row(
  children: <Widget>[
   
    SizedBox(width:22,),
    Text('Tips Amount',
    style: TextStyle(
      color: greycolor,
      fontSize: 16,
      fontWeight: FontWeight.bold
    ),
    )
  ],
),
Row(
  children: <Widget>[
     Text('20',
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
           ],
         )


     ) );
  }
  Widget txtfeildclass(){
    return Card(
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
      width:MediaQuery.of(context).size.width/1.2,
      child: TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
        top: 1,
        left:110
        ),
        border: InputBorder.none,
          hintText:'Enter Code',
          hintStyle: TextStyle(
            color:greycolor,fontSize: 14,fontWeight: FontWeight.bold,
        ),
       
       
          )
        ),
      )  );
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
  Widget bottompart(){
  return Container(
    height: MediaQuery.of(context).size.height/10,
    width:MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
  InkWell(
    onTap: (){
      AppRoutes.push(context, Paymentmethod());
    },
    child:Container(
     decoration: BoxDecoration(
        color: greycolor,
      borderRadius: BorderRadius.circular(7)
  ),
    height: MediaQuery.of(context).size.height/14,
    width: MediaQuery.of(context).size.width/1.5,
    child: Center(
      child:Text('PROCEED',
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

}
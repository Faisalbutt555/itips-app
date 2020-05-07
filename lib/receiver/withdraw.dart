import 'package:flutter/material.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/receiver/receiverappbar.dart';
import 'package:itipsfinal/sender/paymentmethod.dart';
class Withdraw extends StatefulWidget {
  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
      final GlobalKey<ScaffoldState> receivercaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: receivercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:0),
        child: ReceiverAppbar(context,false, receivercaffoldKey ,'Withdraw',false)
      
      ) ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
toppart(),
Padding(padding: EdgeInsets.only(top:30,left: 5),
child: 
Column(
  children: <Widget>[
  Row(
  children: <Widget>[


    Padding(
      padding:EdgeInsets.only(left: 25) ,

      child: Text('Enter withdraw amount',
style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Color(0xffBCBCBC)
),),
    )
  ],
),

    Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: txtfeildclass()),
threecardpart(),

Card(
  margin: EdgeInsets.only(top:13),
    color: greycolor,
  elevation: 7,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8)
  ),
  child: 

GestureDetector(
  onTap: (){
  AppRoutes.replace(context, Paymentmethod());
  },
  child:   Container(





    height: MediaQuery.of(context).size.height/12,

    width: MediaQuery.of(context).size.width/2,

    child: Center(

      child: Text('Proceed',

      style: TextStyle(

        color: whitecolor

      ),)	,

    ),

  ),
)
)],
)

)

          ],
        )
      ),
      );
  }
  Widget txtfeildclass(){
    return Card(
    margin: EdgeInsets.only(left:0,right:10,top: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: 1,
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
          hintText:'00000',
          hintStyle: TextStyle(
         color: Color(0xffBCBCBC),fontSize: 14,fontWeight: FontWeight.bold,
        ),
       
       
          )
        ),
      )  );
  }
    Widget threecardpart(){
    return  Column(
      children: <Widget>[
 twodotpart(),
                 visa(),
                 ppart(),
      ],
      );
  }
   Widget twodotpart(){
    return Card(
              margin: EdgeInsets.only(left: 0,top:18),
              elevation: 1,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                                   Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Image.asset('images/Ellipse70.png',
                    scale:4)
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                     Text('xxxx-6650',
                      style:TextStyle(color: Color(0xff2F8FFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                      )),
                  
                        ],
                      )
                       
                    ),
                      ],
                    ),
         
                     Container(
                      margin: EdgeInsets.only(right: 20),
                      child:Image.asset('images/twodots.png',
                    scale:4)
                    ),
      
                    
                  ],
                ),
              ),
            );
  }
    Widget visa(){
 return  GestureDetector(
   onTap: (){
     setState(() {
     
     });
   },
   child:Card(
              margin: EdgeInsets.only(left: 0,top: 8),
              elevation: 1,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
       Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Image.asset('images/Ellipse71.png',
                    
                    scale:4,
                    )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text('xxxx-9150',
                      style:TextStyle(color: Color(0xff2F8FFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                      )),
                    ),
                      ],
                    ),
             
                     Container(
                      margin: EdgeInsets.only(right: 20),
                      child:Image.asset('images/visa.png',
                    scale:4)
                    ),
                  ],
                ),
              ),
     )    );
  }
    Widget ppart(){
    return 
                      Card(
              margin: EdgeInsets.only(left:0,top: 8),
              elevation: 1,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
      Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Image.asset('images/Ellipse71.png',
                    scale:4)
                    ),
                               Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                     Text('xxxx-6650',
                      style:TextStyle(color: Color(0xff2F8FFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                      )),
                         Text('Expiring Soon!',
                      style:TextStyle(
                        
                      fontSize: 9,
                      color:Colors.red,
                      fontWeight: FontWeight.bold
                      )),
                        ],
                      )
                       
                    ),
                      ],
                    ),
              
                    Container(
                      margin: EdgeInsets.only(right:20),
                      child:Image.asset('images/singlep.png',
                    scale:4)
                    ),
      
                    
                  ],
                ),
              ),
            );
  }


  
  Widget toppart(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6)
      ),
      elevation: 7,
      margin: EdgeInsets.only(left:58,right:58,top: 20),
child: Container(
  height: MediaQuery.of(context).size.height/6.9,
  width:MediaQuery.of(context).size.width,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Total Tipis',
      style: TextStyle(
        fontSize: 16,
        color:greycolor,
        fontWeight: FontWeight.w300
      ),),
      SizedBox(height:5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('400',
          style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 32,
            color: Color(0xff6B8995),

          ),
          ),
          Icon(Icons.euro_symbol,
          color: Color(0xff6B8995),)
        ],
      )
    ],
  ),

),
    );
  }
}
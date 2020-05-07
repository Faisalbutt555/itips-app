import 'package:flutter/material.dart';

import '../approuteclass.dart';
import '../constantcolors.dart';
class Transactionhistory extends StatefulWidget {
  @override
  _TransactionhistoryState createState() => _TransactionhistoryState();
}

class _TransactionhistoryState extends State<Transactionhistory> {
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

Text('Transaction History',
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
Card( 
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
  elevation: 10,
  margin: EdgeInsets.only(left:60,right: 60,top: 30),
  child: Container(
    padding: EdgeInsets.only(top: 10,bottom: 10),
  height: MediaQuery.of(context).size.height/7,
 child:Column(
   mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    Padding(
      padding: EdgeInsets.only(top: 15),
      child: Text('Total Tips Given',
      style: TextStyle(
        color: greycolor,
        fontSize: 16,
        fontWeight: FontWeight.w300
      ),
      ),
    ),
 
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
     Text('800',
    style: TextStyle(
      color:Color(0xff6B8995),
      fontSize:33,
      fontWeight: FontWeight.bold
    ),
    ),
    
    SizedBox(width: 7,),
    Image.asset('images/eurocurrency.png',
    scale: 4,
    color: Color(0xff6B8995),),
   
  ],
)
    ],
  ),
),),
Card(
  elevation: 5,
  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03),
  child: Container(
    padding: EdgeInsets.only(left:20,right:08),
  height: MediaQuery.of(context).size.height/16,
    width: MediaQuery.of(context).size.width,
   child: Row(

     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text('Id',
      style: TextStyle(
        color: greycolor,
        fontSize: 14,
        fontWeight:FontWeight.bold
  ),),
     Text('Tips Given',
      style: TextStyle(
        color: greycolor,
        fontSize: 14,
        fontWeight:FontWeight.bold
  ),),
     Text('Max Tip',
      style: TextStyle(
        color: greycolor,
        fontSize: 14,
        fontWeight:FontWeight.bold
  ),)
  ,
    Text('Professsion',
      style: TextStyle(
        color: greycolor,
        fontSize: 14,
        fontWeight:FontWeight.bold
  ),),
  Row(
    children: <Widget>[
         Text('Month',
      style: TextStyle(
        color: greycolor,
        fontSize: 14,
        fontWeight:FontWeight.bold
  ),),
   Icon(Icons.arrow_drop_down)
    ],
  )
    ],
  )
  ),
),
centerlist()
  ],
)
  ],
),
      
    );
  }
   Widget toppart(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height/4.6,
     decoration: BoxDecoration(
        color: greycolor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16)
        )
     ),

    );
  }
  Widget centerlist(){
    return Container(
      width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.height/1.65,
child: ListView.builder( 
  itemCount:19,
  physics: BouncingScrollPhysics(),
itemBuilder: (BuildContext context,index)=>centerpart(
index==0?123:index==1?223:index==2?234:index==1?3345:index==1?124:125,
index==0?'Bartendar':index==1?'Singer':index==2?'Waiter':index==3?'Comedian':'Bartender',
index
)

),
    );
  }
  Widget centerpart(int txt1,String txt2,index){
    return Card(
      elevation:4,
child: Container(
  padding: EdgeInsets.only(left:10,right:20),
  width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height/17,
  child: Row(
   // crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text('$txt1',
      style: TextStyle(
        color: Color(0xff424243),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),),
      Row(
        children: <Widget>[
             Text('20',
      style: TextStyle(
        color: Color(0xff424243),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),),
      Icon(Icons.euro_symbol,
      color: greycolor,
      size: 16,
      )
        ],
      ),
            Row(
        children: <Widget>[
             Text('20',
      style: TextStyle(
        color: Color(0xff424243),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),),
      Icon(Icons.euro_symbol,
      color: greycolor,
      size: 16,
      )
        ],
      ),
  Text('$txt2',
      style: TextStyle(
        color: Color(0xff424243),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),),
                Row(
        children: <Widget>[
             Text('40',
      style: TextStyle(
        color: Color(0xff424243),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),),
      Icon(Icons.euro_symbol,
      color: greycolor,
      size: 16,
      )
        ],
      ),

    ],
  ),
),
    );
  }
 
}
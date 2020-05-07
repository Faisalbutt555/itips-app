
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/maindrawer.dart';
import 'package:itipsfinal/receiver/floatingactionbutton.dart';
import 'package:itipsfinal/receiver/receiver_drawer.dart';


class Receiverhome extends StatefulWidget {
  @override
  _ReceiverhomeState createState() => _ReceiverhomeState();
}

class _ReceiverhomeState extends State<Receiverhome> {
    final GlobalKey<ScaffoldState> receivercaffoldKey = new GlobalKey<ScaffoldState>();
int button=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: button==1?FancyFab():Container(height: 1,),
     key: receivercaffoldKey,
      drawer: Receiverdrawer(),
      body:SingleChildScrollView(
        child: Column(
        children: <Widget>[
          toppart(),
            empbuiscall(),
          ],
        ),
      )
  );
  }
   Widget toppart(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height/3.7,
     decoration: BoxDecoration(
        color: greycolor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16)
        )
     ),
     child: Padding(
    padding: EdgeInsets.only(top:50,left: 10,right: 30,bottom: 15),
     child:Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             InkWell(
               onTap: (){
             
           // Scaffold.of(context).openDrawer();
             receivercaffoldKey.currentState.openDrawer();
                
               },
               child: Image.asset('images/drawerimage.png',
               scale: 4,),
             ),
             Text('Home',
             style: TextStyle(
               color: whitecolor,
               fontSize: 16,
               fontWeight: FontWeight.bold
             ),),
             Container()
           ],
         ),
         
         buttonpart()
       ],
     ),

     ) );
  }
    Widget buttonpart(){
return Container(
  height: MediaQuery.of(context).size.height/15.5,
  width: MediaQuery.of(context).size.width/1.54,
  decoration: BoxDecoration(
    color: whitecolor,
    borderRadius: BorderRadius.circular(18),
    border: Border.all(
      width: .9,
      color:whitecolor,
    )
  ),
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
     InkWell(
       onTap: (){
         employpart();
         setState(() {
           button=0;
      });
       },
       child: Container(
        margin: EdgeInsets.only(left:4),
  decoration: BoxDecoration(
     color:button==0?greycolor:Colors.transparent,
    borderRadius: BorderRadius.circular(15),
  ),
  height:MediaQuery.of(context).size.height/19.5,
  width: MediaQuery.of(context).size.width/3.6,
  child:Center(
    child: Text('Employee',
    style: TextStyle(
      color: button==0?whitecolor:greycolor,
      fontSize: 17,
      fontWeight: FontWeight.bold
                           ),
    ),
  )
  
)),
     InkWell(
       onTap: (){
         setState(() {
           button=1;
         });
       },
       child: Container(
        margin: EdgeInsets.only(right:3),
  decoration: BoxDecoration(
     color:button==1?greycolor:Colors.transparent,
    borderRadius: BorderRadius.circular(15),
  ),
  height:MediaQuery.of(context).size.height/19.5,
  width: MediaQuery.of(context).size.width/3.6,
  child:Center(
    child: Text( 'Business',
    style: TextStyle(
      color: button==1?whitecolor:greycolor,
      fontSize: 17,
      fontWeight: FontWeight.bold
    ),
    ),
  )
  
))
   ],
 ),
);

  }
  Widget empbuiscall(){
    return button==0?employpart():buisnesspart();
  }

Widget buisnesspart(){
  return Container(
    height: MediaQuery.of(context).size.height/.3,
    width: MediaQuery.of(context).size.width,
child: Padding(padding: EdgeInsets.only(left:20,
top: 10),
child: Column(
  children: <Widget>[
Row(
   mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    Text('Hot Deals',
    style: TextStyle(
      color: greycolor,
      fontWeight: FontWeight.bold,
    fontSize: 18
    ),),
   
    
  ],
),
 buisnesspartlist(),
 SizedBox(
   height: 7,
 ),
 Row(
   mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    Text('Services List',
    style: TextStyle(
      color: greycolor,
      fontWeight: FontWeight.bold,
    fontSize: 18
    ),),
   
  
    
  ],
),
 servicelist(),
  ],
),
  ));
  
}
  Widget servicelist(){
    return Container(
        height:MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 2,
      childAspectRatio:1.1
      ), 
    itemBuilder: (BuildContext context,index)=>servicespart(
      index==0?'images/parath2.png':'images/parath4.png', 
     index==0?'Gourmet Roll':'Chicken Roll',
      index
      )
    ));
  }
  Widget servicespart(String img,String txt,index){
    return Card(
elevation: 10,
child: Container(
  child: Column(
  children: <Widget>[
    Container(
      padding: EdgeInsets.only(left:10,right:10,top: 5),
      child:Image.asset('$img',
      scale: 2,)),
      SizedBox(height:8),
      
      Padding(padding:EdgeInsets.only(left:10,right: 10),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
       Text('$txt',
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color:greycolor
      ),),
      Row(
      
        children: <Widget>[
          Text('20',
          style: TextStyle(
            color: Color(0xffEE6A59),
            fontSize: 14,
            fontWeight: FontWeight.bold
          ),),
          Icon(Icons.euro_symbol,
          size: 13,
          color: Color(0xffEE6A59),
          )
        ],
      )
        ],
      )
  
       ) ],
  ),

),
    );
  }

Widget buisnesspartlist(){
  return Container(
   
height: MediaQuery.of(context).size.height/3,
child: ListView.builder(
  
          itemCount:2,
          itemBuilder:(BuildContext context, index)=>buisnesscenterpart()
           ));
}
 Widget buisnesscenterpart(){
   return Card(
       margin: EdgeInsets.only(left:10,right:10,top:5),
     elevation: 10,
     child: Container(
height: MediaQuery.of(context).size.height/7.6,
  padding: EdgeInsets.only(left:05 ,right:0),
       child:Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: <Widget>[
       Row(
        children: <Widget>[
           Container(
             decoration: BoxDecoration(
                        
image: DecorationImage(image: AssetImage('images/parath1.png')),
               borderRadius: BorderRadius.circular(6)
             ),
         
         height: MediaQuery.of(context).size.height/8,
         width:MediaQuery.of(context).size.width/4,
         margin: EdgeInsets.only(top:4,bottom:5),
         
     ),
     Padding(
       padding: EdgeInsets.only(left:10,),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text('Gourment Toast',
           style: TextStyle(
             color:Color(0xff414141),
fontWeight: FontWeight.bold,
             fontSize:14 
           ),),
           SizedBox(height:2),
         
              SizedBox(height:4),
              Text('Tue-Sat  4pm to 7pm',
           style: TextStyle(
             color:Color(0xff414141),
fontWeight: FontWeight.bold,
             fontSize:12
           ),),
              SizedBox(height:3),
              Text('21Feb to 26 Feb' ,
           style: TextStyle(
             color:Color(0xff414141),
fontWeight: FontWeight.w500,
             fontSize:10 
           ),)
           
         ],
       )
      ) ],
       ),
  
 
      
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
         children: <Widget>[
         
       Container(
        
         decoration: BoxDecoration(
            color: buttoncolor,
           borderRadius:BorderRadius.only(
             bottomLeft: Radius.circular(4),
             topRight: Radius.circular(4)
           )
         ),
             padding: EdgeInsets.only(right:3),
           height: 20,
           width: 52,
             child: 
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
               Text('25',
               style: TextStyle(
                 color: whitecolor,
                 fontSize: 12,
                 fontWeight: FontWeight.bold
               ),
               ),
           Image.asset('images/percentage.png',
           scale: sqrt1_2,),
               Text('Off',
                style: TextStyle(
                 color: whitecolor,
                 fontSize: 12,
                 fontWeight: FontWeight.bold
               ),)
             ],
           ),
         )
          ,
          Padding(
            padding: EdgeInsets.only(right:05,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        
              
            ],
          ),)

           ],
       )
         
      ],
   )
     ),
   );


  }
 

  Widget employpart(){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:Column(
  children: <Widget>[
Card(
  margin: EdgeInsets.only(top:30),
  elevation: 5,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
  ),
  child: Container(
    padding: EdgeInsets.only(top:10,bottom:5),
    height: MediaQuery.of(context).size.height/7,
    width: MediaQuery.of(context).size.width/1.4,
    child:
Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        Text('Total Tips',
        style: TextStyle(
          color: greycolor,
          fontWeight: FontWeight.w300,
          fontSize: 16
        ),),
        SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('800',
            style: TextStyle(
          color:Color(0xff6B8995),
          fontWeight: FontWeight.w300,
          fontSize: 33
        ),
        
            ),
            Icon(Icons.euro_symbol,
            color: Color(0xff6B8995),
            )
          ],
        )

      ],
    ),
  ),
),
Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(7)
  ),
  elevation: 10,
  margin: EdgeInsets.only(top:30,left: 15,right: 15),
  child: Container(height: MediaQuery.of(context).size.height/13,
  
  child: Center(
    child: Text('john Pub',
    style:TextStyle(
      color: greycolor,
      fontSize: 16,
      fontWeight: FontWeight.w300
    ),),
  ),

  ),
),
Card(
  elevation: 5,
  margin: EdgeInsets.only(top: 20),
  child: Container(
    padding: EdgeInsets.only(left:20,right:08),
  height: MediaQuery.of(context).size.height/16,
    width: MediaQuery.of(context).size.width,
   child: Row(

     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text('Sender',
      style: TextStyle(
        color: greycolor,
        fontSize: 14,
        fontWeight:FontWeight.bold
  ),),
     Text('Tip Given',
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
SizedBox(height:04),
centerlist()
],
    ));
  }
   Widget centerlist(){
    return Container(
      width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.height/2.4,
child: ListView.builder( 
  itemCount:9,
  physics: BouncingScrollPhysics(),
itemBuilder: (BuildContext context,index)=>centerpart(

)

),
    );
  }
    Widget centerpart(){
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
      Text('john',
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
import 'package:flutter/material.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/receiver/receiver_drawer.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
class Addpromotion extends StatefulWidget {
  @override
  _AddpromotionState createState() => _AddpromotionState();
}

class _AddpromotionState extends State<Addpromotion> {
      final GlobalKey<ScaffoldState> receivercaffoldKey = new GlobalKey<ScaffoldState>();
      int select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:bottompart(),
      
       key: receivercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:20),
        child: SenderAppbar(context,false, receivercaffoldKey ,'Add Promotion',false)
      
      ) ),
         drawer: Receiverdrawer(),
         body:SingleChildScrollView(
           child:Column(
           children: <Widget>[
             
            entiresingle(),
            
            SizedBox(height:10),
            select==0?
            onentiremenu():Column(
              children: <Widget>[
                           Container(

             margin: EdgeInsets.only(top:3,left: 7,right: 7),
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'Select',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,
                ),
              contentPadding: EdgeInsets.only(left:10,top:10,),
              suffixIcon:  Icon(Icons.arrow_drop_down,
              color: Colors.grey)
            ),
            ),
          ),
           onentiremenu()
         
          
          
              ],
            )
           ],
         ),
      
    ));
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
      child:Text('Post',
      style: TextStyle(
        color: whitecolor,
      fontWeight: FontWeight.w500,
        
        fontSize: 16
      ),
  ),
    ),
  ))
      ],
    ),
  ) ;
 
  }
 
  Widget entiresingle(){
    return Padding(padding: EdgeInsets.only(left:10,right:10  ,
    top: 10),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
         Row(
           children: <Widget>[
           Container(
               height: 17,
               width: 17,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 //color: select==0?greycolor:Colors.white,
                 border: Border.all(
                   color: greycolor,
                   width: .5
                 )
               ),
               child:
               InkWell(
                 onTap: (){
                   setState(() {
                      select=0;
                   });},
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
       Container(
                 height:16,
               width:12.4,
                  decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: select==0?greycolor:Colors.white,
               ),
               ),
                 ],
               )
        
               ) ),
              
             SizedBox(width:5),
             Text('On entire menu',
             style: TextStyle(
               color: greycolor,
               fontSize: 18,
               fontWeight: FontWeight.bold
             ),)
           ],
         ),
                  Row(
           children: <Widget>[
              Container(
               height: 17,
               width: 17,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 //color: select==0?greycolor:Colors.white,
                 border: Border.all(
                   color: greycolor,
                   width: .5
                 )
               ),
               child:
               InkWell(
                 onTap: (){
                   setState(() {
                      select=1;
                   });},
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
       Container(
                 height:16,
               width:12.4,
                  decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: select==1?greycolor:Colors.white,
               ),
               ),
                 ],
               )
        
               ) ),
              SizedBox(width:5),
             Text('Single Product',
             style: TextStyle(
               color: greycolor,
               fontSize: 18,
               fontWeight: FontWeight.bold
             ),)
           ],
         )
   
      ],
    ));
  }

Widget onentiremenu(){

  return Padding(padding: EdgeInsets.only(left:10,right:10),
  child:Column(
children: <Widget>[
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left:3),
          child:Text('Starting Date',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3),
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/2.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: '22-05-2020',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,

                ),
                contentPadding: EdgeInsets.only(left:10,top: 10),
             suffixIcon: Image.asset('images/calenderfinal.png',
             scale:2.5,
             color: Color(0xff667980),)
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
          Padding(padding: EdgeInsets.only(left:12),
          child:
          Text('Ending date',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3),
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/2.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: '22-05-2020',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,

                ),
                contentPadding: EdgeInsets.only(left:10,top: 10),
             suffixIcon: Image.asset('images/calenderfinal.png',
             scale:2.5,
             color: Color(0xff667980),)
              ),
            ),
          )
              ],
      )
    ],
  ),
  SizedBox(height:5),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left:3),
          child:Text('Starting Date',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3),
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/2.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: '22-05-2020',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,

                ),
                contentPadding: EdgeInsets.only(left:10,top: 10),
             suffixIcon: Image.asset('images/time.png',
             scale:3.5,
             color: Color(0xff8E9CA1),)
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
          Padding(padding: EdgeInsets.only(left:12),
          child:
          Text('Ending date',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3),
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/2.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: '22-05-2020',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,

                ),
                contentPadding: EdgeInsets.only(left:10,top: 10),
             suffixIcon: Image.asset('images/time.png',
             scale:4,
             color: Color(0xff8E9CA1),)
              ),
            ),
          )
              ],
      )
    ],
  ),
   SizedBox(height:5),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left:3),
          child:Text('Discount',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3),
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/2.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'Percentage',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,

                ),
                contentPadding: EdgeInsets.only(left:10,top: 10),
             suffixIcon:  Icon(Icons.arrow_drop_down,
              color: Colors.grey)
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
          Padding(padding: EdgeInsets.only(left:12),
          child:
          Text('Add Figgure',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3),
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/2.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: '25',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,

                ),
                contentPadding: EdgeInsets.only(left:70,top: 0),
             
            ),
          )
            ) ],
      )
    ],
  ),
  SizedBox(height:5),
    Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left:3),
          child:Text('Discount',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
           Container(
             margin: EdgeInsets.only(top:3),
            height: MediaQuery.of(context).size.height/6.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                
                border:InputBorder.none,
                hintText: '',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,
)),

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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
    Padding(padding: EdgeInsets.only(right:6),
          child:
          Text('0/25',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
            ],
          )
      
 ],
      )
    ],
  ),
  

],
    )  );
}
  Widget centerpart(){
 return Column(
children: <Widget>[


],
 );
  }
}
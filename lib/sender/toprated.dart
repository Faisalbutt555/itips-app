import 'package:flutter/material.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';
import 'package:itipsfinal/sender/senderhome.dart';
import 'package:itipsfinal/sender/viewclass.dart';
import '../approuteclass.dart';
import '../constantcolors.dart';
class Toprated extends StatefulWidget {
  @override
  _TopratedState createState() => _TopratedState();
}



class _TopratedState extends State<Toprated> {
final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottompart(),
        key: sendercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:0),
        child: SenderAppbar(context,true, sendercaffoldKey ,'Top Rated',true),
        )
        ),
         drawer: Senderdrawer(),
         body: ListView.builder(
          itemCount:9,
          itemBuilder:(BuildContext context, index)=>centerpart(
          index==0?'images/star1.png':index==1?'images/star2.png':index==2?'images/star3.png':index==3?'images/star1.png':'images/parath5.png',
              index==0?'Broadway':index==1?'Star bucks':index==2?'Pizza Point':index==3?'Broadway':'Starbucks',
                index==0?25:index==1?25:index==2?10:index==3?15:index==4?25:10,
               
                 index
            )
           ),
    );
  }
  Widget bottompart(){
    return Card(
        elevation: 15,
        child: Container(
      height:80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22)
              ),
              elevation:10,
              child:Container(
                padding: EdgeInsets.only(left:40,right:20),
              width: MediaQuery.of(context).size.width/1.2,
            height:50,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
        
                InkWell(
              onTap: (){
                AppRoutes.push(context, Senderhome());
              },
            child: Image.asset('images/mapselected.png',
           color: greycolor,
              scale: 4,),
                    ),
              
                     InkWell(
              onTap: (){
                // AppRoutes.push(context, //Hotdeal());
              },
              child: Image.asset('images/spoon.png',
                            scale:3,),
                    ),
                                  Container(
                  padding: EdgeInsets.only(left:04,right:4),
              
                  height:MediaQuery.of(context).size.height/22,
                 width:MediaQuery.of(context).size.width/3.7,
                 decoration: BoxDecoration(
                     color: buttoncolor,
                   borderRadius: BorderRadius.circular(18)
                 ),
                 child: Row(
                   
                   children: <Widget>[
                     Image.asset('images/star.png',
                     scale: 4,
                     color: whitecolor,),
                     SizedBox(width:2),
                     Text('Top Rated',
                     style:TextStyle(color: whitecolor,
                     fontSize: 13,
                     fontWeight: FontWeight.bold
                     ))
                   ],
                 ),
),
              ],
            ),
             
           )
             ) ],
        ),
       ) );
  }
 Widget centerpart(String img,String txt1,int txt2,int index){
   return Card(
       margin: EdgeInsets.only(left:10,right:10,top: 5),
     elevation: 2,
     child: Container(
  padding: EdgeInsets.only(left:00 ,right:0),
       child:Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: <Widget>[
       Row(
        children: <Widget>[
           Container(
width:MediaQuery.of(context).size.width/2.8,
child: Image.asset('$img'),
        
         
     ),
     Padding(
       padding: EdgeInsets.only(left:10,top: 15,bottom:15),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
    
          
              Text('$txt1',
           style: TextStyle(
             color:Color(0xff414141),
fontWeight: FontWeight.bold,
             fontSize:14 
           ),),
              
              SizedBox(height:3),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/location.png',
              scale: 4,),
              SizedBox(width:2),
              Text('${txt2}Km away',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color:Color(0xff414141) 
              ),),
              
            ],
          ),
           
         ],
       )
      ) ],
       ),
  
 
      
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.end,
         children: <Widget>[
           Container(
             margin: EdgeInsets.only(right: 5),
             padding: EdgeInsets.only(right:10,top: 3),
             child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
      index==0?
          Row(
            children: <Widget>[
Image.asset('images/star.png',
         color: Colors.yellow,
         scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
         scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
          scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
        scale:7,),
         
            ],
          ):index==1?Row(
            children: <Widget>[
Image.asset('images/star.png',
         color: Colors.yellow,
         scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
          scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
         scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
         scale:7,),
          Image.asset('images/star.png',
         color: Colors.yellow,
        scale:7,)
            ],
          ):index==2? Row(
            children: <Widget>[
Image.asset('images/star.png',
         color: Colors.yellow,
          scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
       scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
          scale:7,),
      
            ],
          ):index==3? Row(
            children: <Widget>[
Image.asset('images/star.png',
         color: Colors.yellow,
          scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
        scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
         scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
        scale:7,),
       
            ],
          ):index==4?Row(
            children: <Widget>[
Image.asset('images/star.png',
         color: Colors.yellow,
          scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
         scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
         scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
       scale:7,),
       
            ],
          ):Row(
            children: <Widget>[
Image.asset('images/star.png',
         color: Colors.yellow,
          scale:7,),
         Image.asset('images/star.png',
         color: Colors.yellow,
        scale:7,),
          ],
          ),
         ],
        ),
        SizedBox(width: 15,),
        index==0?Icon(Icons.favorite,
        color: Color(0xffFB7171),
        size: 17,
        ):index==1?
        Icon(Icons.favorite,
        color: Color(0xffFB7171),
            size: 17,):index==2?
         Icon(Icons.favorite,
        color: Color(0xffC8C8C8),
            size: 17,):index==3?
Icon(Icons.favorite,
        color: Color(0xffFB7171)
        ,    size: 17,):index==4?Icon(Icons.favorite,
        color: Color(0xffFB7171),
            size: 17,):index==5?Icon(Icons.favorite,
        color: Color(0xffC8C8C8),
        size: 17):index==6?Icon(Icons.favorite,
        size: 17,
        color: Color(0xffC8C8C8)):index==7?Icon(Icons.favorite,
        size: 17,
        color: Color(0xffC8C8C8)):index==8?Icon(Icons.favorite,
        size: 17,
        color: Color(0xffC8C8C8)):index==9?Icon(Icons.favorite,
        size: 17,
        color: Color(0xffC8C8C8)):index==10?Icon(Icons.favorite,
         size: 17,
        
        color: Color(0xffC8C8C8)):Icon(Icons.favorite,
         size: 17,
        color: Color(0xffC8C8C8))
            ],
          ),
           ),
          Padding(
            padding: EdgeInsets.only(right:10,bottom:5),
            child: InkWell(
              onTap: (){
                AppRoutes.push(context, View());
              },
              child: Column(
                children: <Widget>[
                  Text('View', 
                  style: TextStyle(
                  decoration: TextDecoration.underline,
                    color: Color(0xff3A3F58),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          )

           ],
       )
         
      ],
   )
     ),
   );


  }
}
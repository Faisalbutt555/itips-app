import 'package:flutter/material.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';
import 'package:itipsfinal/sender/viewclass.dart';

import '../approuteclass.dart';
class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: sendercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:0),
        child: SenderAppbar(context,false, sendercaffoldKey ,'Favourites',false)
      
      ) ),
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
   Widget centerpart(String img,String txt1,int txt2,int index){
   return Card(
       margin: EdgeInsets.only(left:10,right:10,top: 5),
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
width:MediaQuery.of(context).size.width/3,
height: MediaQuery.of(context).size.height,
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
             padding: EdgeInsets.only(right:10,top: 3),
             width:100,
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
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';

import '../constantcolors.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {

   Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();
  int button=0;
   int bodyselector=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: sendercaffoldKey,
        drawer: Senderdrawer(),
         body:SingleChildScrollView(
           physics: button==2?ClampingScrollPhysics():NeverScrollableScrollPhysics(),
           child:Column(
           children: <Widget>[
             toppart(),
             SizedBox(height:20),
             buttonpart(),
             button==0?deallist():button==1?servicelist():button==2?reviewlist():locationpart()

           ],
         ),

      ) );
  }
  Widget bottombuttonparttwo(){
    return Card(
child: Container(
  height: 100,
  width: 90,
  child:
  Container(
    height: 80,
    width: 80,
    child:Row(
      children: <Widget>[

Image.asset('images/useravatar.png',
scale: 3,),


      ],
     ) )));
      

      
    
  }

  Widget locationpart(){
    return Column(
      children: <Widget>[
     Card(
       elevation: 20,
      margin: EdgeInsets.only(left:10,right:10,top: 13),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(8)
       ),
       child: Container(
         padding: EdgeInsets.only(left:7,right:7),
         height: MediaQuery.of(context).size.height/10,
         child: Center(
           child: Text('Lorem ipsum dolor sit amet',
           style: TextStyle(
             color: greycolor,
             fontWeight: FontWeight.bold,
             fontSize: 18
           ),),
         ),
       ),
     ),
     Container(
       margin: EdgeInsets.only(top:12),
       height:MediaQuery.of(context).size.height/5,
    width:MediaQuery.of(context).size.width/1.2,
       child: googlemap(),
     ),
        SizedBox(
          height: 5,
        ),
        Card(
            color: greycolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),

            child:Container(
                padding: EdgeInsets.only(left:40,right:50),
                width: MediaQuery.of(context).size.width/1.5,
                height:50,
                child:Center(
                  child: Text(
                    'Create Route',
                    style: TextStyle(
                        color: whitecolor,
                        fontSize:18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )

            )
        ),
      ],
    );
  }
  Widget googlemap()
  {
    return GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
         // _controller.complete(controller);
        },
      );
  }
  Widget reviewlist(){
    return SingleChildScrollView(

      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:10),
            height:MediaQuery.of(context).size.height/2.5,
            child: ListView.builder(
              itemCount:10,
              itemBuilder: (BuildContext context, index)=>reviewspart(
                index==0?'images/review1.png':index==1?'images/review2.png':index==2?'images/review3.png':'images/review1.png',
                index==0?'20-Aug-2019':index==1?'10-july-2019':index==2?'10-may-2019':'20-Aug-2019',
                 index==0?'12:00pm':index==1?'12:00am':index==2?'1:00pm':'12:00pm',
                  index==0?'Andriana':index==1?'Bryan':index==2?'Kristina':'Andriana',
                  index
                )
              ),
          ),
        bottomparttwo(),
        ],
      ),
    );
  }

  Widget reviewspart(String img,String time,String date, String name,index){
    return Container(
      margin: EdgeInsets.only(top:5),
child: Column(
  children: <Widget>[
    Padding(padding: EdgeInsets.only(right:10),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text('$time',
        style: TextStyle(
          color: greycolor,
        fontSize: 12,
        fontWeight: FontWeight.w700,
         ),
         ),
         SizedBox(width:5),
        Text('$date',
         style: TextStyle(
          color:Colors.grey,
        fontSize:10,
        fontWeight: FontWeight.w700,
         ),),
      ],
    ),
    ),
   
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex:1,
          child:CircleAvatar(
          radius: 27,
          child:Image.asset('$img'),
        )
        ),
        Expanded(
          flex:3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('$name',
             style: TextStyle(
          color: greycolor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
         ),),
            Container(
              padding: EdgeInsets.only(right: 20,top: 10),
              child: Text('Lorem ipsum dolor sit amit, consectetuter edipsing elit, sed do eiusmod tempor',
              style: TextStyle(
                color: Colors.grey,
                fontSize:12,
              ),
              ),
            )
          ],
        ))
      ],
    ),
   
    Container(
      margin: EdgeInsets.only(top:10,left:6,right:6),
      height:1.5,
      color:Colors.grey,
    )
  ],
  
),
    );
  }
  
  
  Widget servicelist(){
    return InkWell(
      onTap: (){
        bodyselector=2;
      },
      child:Container(
        height:MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 2,
      childAspectRatio:1.1
      ), 
    itemBuilder: (BuildContext context,index)=>servicespart(
      index==0?'images/parath2.png':'images/parath4.png', 
     index==0?'Gourmet Roll':'Chicken Roll',
      index
      )
    )));
  }
  Widget servicespart(String img,String txt,index){
    return Card(
elevation: 10,
child: Container(
  child: Column(
  children: <Widget>[
    Container(
      padding: EdgeInsets.only(left:4,right:4,top: 5),
      child:Image.asset('$img',
      scale: 2,)),
      SizedBox(height:8),
      
      Padding(padding:EdgeInsets.only(left:10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
       Text('$txt',
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color:greycolor
      ),),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Text('20€',
              style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color:buttoncolor
              ),),
          )
        ],
      )
  
       ) ],
  ),

),
    );
  }
  Widget deallist(){
    return   InkWell(
      onTap: (){
        bodyselector=1;
      },
      child:Container(
               margin: EdgeInsets.only(top:10),
               height: MediaQuery.of(context).size.height/1,
               child:ListView.builder(
                 physics: ClampingScrollPhysics(),
          itemCount:12,
          itemBuilder:(BuildContext context, index)=>dealpart(  
          index==0?'images/parath1.png':index==1?'images/parath2.png':index==2?'images/parath3.png':index==3?'images/parath4.png':'images/parath5.png',
              index==0?'Broadway':index==1?'Star bucks':index==2?'Pizza Point':index==3?'Broadway':'Starbucks',
               index==0?'Tue-Sat  4pm to 7pm':index==1?'Tue-Sat  4pm to 7pm':index==2?'All december':index==3?'Tue-Sat  4pm to 7pm':'All december',
                index==0?'21Feb to 26 Feb':index==1?'21Feb to 26 Feb':index==2?'':index==3?'21Feb to 26 Feb':index==4?'':'21Feb to 26 Feb',
                index==0?25:index==1?25:index==2?10:index==3?15:index==4?25:10,
                index==0?'%':index==1?'%':index==2?'E':index==3?'%':index==4?'%':index==5?'%':'E',
                index==0?2:index==1?4:index==2?5:index==3?2:index==4?4:5,
                 index
            )
           )
           ) );
  }
   Widget dealpart(String img,String txt2,String txt3,String txt4,txt5,String sign,int txt, index){
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
             decoration: BoxDecoration(
                        
image: DecorationImage(image: AssetImage('$img')),
               borderRadius: BorderRadius.circular(6)


             ),
child: Image.asset('$img',scale: 8,),
         width:MediaQuery.of(context).size.width/3,

     ),
     Padding(
       padding: EdgeInsets.only(left:10,),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
       
           SizedBox(height:15),
              Text('$txt2',
           style: TextStyle(
             color:greycolor,
fontWeight: FontWeight.bold,
             fontSize:14 
           ),),
           SizedBox(height:15),
           Text('$txt3',
           style: TextStyle(
             color:Color(0xff414141),
fontWeight: FontWeight.bold,
             fontSize:12
           ),),
              SizedBox(height:15),
              Text('$txt4',
           style: TextStyle(
             color:Color(0xff414141),
fontWeight: FontWeight.w500,
             fontSize:12
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
               Text('$txt5',
               style: TextStyle(
                 color: whitecolor,
                 fontSize: 12,
                 fontWeight: FontWeight.bold
               ),
               ),
               Text('${sign}Off',
                style: TextStyle(
                 color: whitecolor,
                 fontSize: 12,
                 fontWeight: FontWeight.bold
               ),)
             ],
           ),
         ),
           Padding(
             padding: EdgeInsets.only(right: 10,bottom: 10),
             child: Text('20€',
               style: TextStyle(
                   color: buttoncolor,
                   fontSize: 14,
                   fontWeight: FontWeight.bold
               ),),
           )


           ],
       )

      ],
   )
     ),
   );


  }
  
    Widget buttonpart(){
return Card(
  elevation: 20,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(40)
  ),
  child:Container(
 margin: EdgeInsets.only(left:5,right:4),
  padding: EdgeInsets.only(left:0,right:0),
  height: MediaQuery.of(context).size.height/15.5,
  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
    
    borderRadius: BorderRadius.circular(22),
 color: whitecolor
  ),
 child: Row(
 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
     InkWell(
       onTap: (){
         setState(() {
           button=0;
      });
       },
       child: Container(
  decoration: BoxDecoration(
     color:button==0?greycolor:Colors.transparent,
    borderRadius: BorderRadius.circular(25),
  ),
  height:MediaQuery.of(context).size.height/19.5,
  width: MediaQuery.of(context).size.width/4.5,
  child:Center(
    child: Text(' Deals ',
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
    decoration: BoxDecoration(
     color:button==1?greycolor:Colors.transparent,
    borderRadius: BorderRadius.circular(25),
  ),
  height:MediaQuery.of(context).size.height/19.5,
  width: MediaQuery.of(context).size.width/4.2,
  child:Center(
    child: Text( 'Menu',
    style: TextStyle(
      color: button==1?whitecolor:greycolor,
      fontSize: 17,
      fontWeight: FontWeight.bold
    ),
    ),
  )
  
)),
 InkWell(
       onTap: (){
         setState(() {
           button=2;
      });
       },
       child: Container(
       
  decoration: BoxDecoration(
     color:button==2?greycolor:Colors.transparent,
    borderRadius: BorderRadius.circular(25),
  ),
  height:MediaQuery.of(context).size.height/19.5,
  width: MediaQuery.of(context).size.width/4.2,
  child:Center(
    child: Text('Reviews',
    style: TextStyle(
      color: button==2?whitecolor:greycolor,
      fontSize: 17,
      fontWeight: FontWeight.bold
                           ),
    ),
  )
  
)),
 InkWell(
       onTap: (){
         setState(() {
           button=3;
      });
       },
       child: Container(
        
  decoration: BoxDecoration(
     color:button==3?greycolor:Colors.transparent,
    borderRadius: BorderRadius.circular(25),
  ),
  height:MediaQuery.of(context).size.height/19.5,
  width: MediaQuery.of(context).size.width/4.2,
  child:Center(
    child: Text('Location',
    style: TextStyle(
      color: button==3?whitecolor:greycolor,
      fontSize: 17,
      fontWeight: FontWeight.bold
                           ),
    ),
  )
  
)),

   ],
 ),
));

  }
  Widget toppart(){
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.14),
          height: MediaQuery.of(context).size.height*.27,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(9),
              bottomRight: Radius.circular(9)
              ),
            image: DecorationImage(
              image:AssetImage('images/burgermain.png',
              ),
            fit: BoxFit.fill
            ),
            ),
child:
 BackdropFilter(filter: ImageFilter.blur(sigmaX:2.5,sigmaY:2.5),
 child: Container(color: Colors.black.withOpacity(0),
 child:

Stack(
  children: <Widget>[

  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
  Text('Rating: 4.0 (31)',
          style:TextStyle(
            color: whitecolor,
            fontWeight: FontWeight.bold,
            fontSize:18
)),],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
              ),
              SizedBox(height: 10,),
              Container(
               width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/15 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: whitecolor,
                    width: 1
                  )
                ),
                child:Center(
                  child: Text('4 km away',
                  style: TextStyle(
                    color: whitecolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18

                  ),
                  ),
                ) ,
              )

        ],
  )

  ],
),

             )     ) ),
        Align(
          alignment:Alignment.topCenter,
          child: Container(
            height: 120,
            child: PreferredSize(
                preferredSize: Size.fromHeight(100), // here the desired height
                child:Padding(
                  padding: EdgeInsets.only(top:0),
                  child: SenderAppbar(context,false, sendercaffoldKey ,'Broadway',false),
                )
            ),
          ),
        ),

      ],
    );
  }
     Widget bottomparttwo(){
    return Container(
      width:MediaQuery.of(context).size.width,
    height:MediaQuery.of(context).size.height/16,
    child:Padding(padding: EdgeInsets.only(left: 10,right: 10),
    child:Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      Image.asset('images/useravatar.png',
scale:4,),
Container(
  margin: EdgeInsets.only(left:5),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
border: Border.all(
  width: 1,

)
  ),
  width: MediaQuery.of(context).size.width/1.3,
  height: 30,
child:TextFormField(
    decoration: InputDecoration(
      suffixIcon: Image.asset('images/sent.png',
      scale: 4,),
      contentPadding: EdgeInsets.only(left: 10,bottom:16),
    border: InputBorder.none,
    hintText: 'Add review here.',
    hintStyle: TextStyle(
    color: greycolor,
    fontSize:12,
    fontWeight: FontWeight.w400,
)
  ),
  )
)
 

      ],
        
     ) ) );
  }
Widget bottompart(){
    return Card(
    
        child: Container(
      height:65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
                color: buttoncolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22)
              ),
              
              child:Container(
                padding: EdgeInsets.only(left:40,right:50),
              width: MediaQuery.of(context).size.width/1.5,
            height:50,
           child:Center(
             child: Text(
               'Send Tip',
               style: TextStyle(
                 color: whitecolor,
                 fontSize:18,
                 fontWeight: FontWeight.bold
               ),
             ),
           )
             
           )
             ) ],
        ),
       ) );
  }
}
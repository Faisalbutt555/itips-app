import 'package:carousel_slider/carousel_slider.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';
class Paymentmethod extends StatefulWidget {
  @override
  _PaymentmethodState createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
    final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<ScaffoldState>();
int bodyselector=0;
 bool _value = false;
 bool someBooleanValue=true;
  bool someBooleanValue1=false;
   bool someBooleanValue2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
key: sendercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:0),
        child: SenderAppbar(context,false, sendercaffoldKey ,'Payment Method',false),
        )
        ),
         drawer: Senderdrawer(),
         body:SingleChildScrollView(
           child: Container(
             margin: EdgeInsets.only(top:8),
             height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,
             child: bodyselector==0? Column(
               children: <Widget>[
                 toppart(),
                 threecardpart(),
                 SizedBox(height:10),
                 addcardbutton(),
          
               ],
             ):bodyselector==1?Column(
               children: <Widget>[
                  threecardpart(),
                  addnewcard()

             
               ],
             ):bodyselector==2?Column(
               children: <Widget>[
              twodotpart(),
                
                 Container(
                   margin: EdgeInsets.only(left:10,right:0,top: 30),
                   height: MediaQuery.of(context).size.height/4.4,
                   width: MediaQuery.of(context).size.width/1.2,
                   child: Image.asset('images/card.png'),
                 ),
                     Container(
                   margin: EdgeInsets.only(left:20,right:20,top: 30),
                   height: MediaQuery.of(context).size.height/9,
                   width: MediaQuery.of(context).size.width,
                   child:InkWell(
                     onTap: (){
                       setState(() {
                         bodyselector=3;
                       });
                     },
                     child:Image.asset('images/successfully.png'),
                     )),
               ],
             ):bodyselector==3?Column(
               children: <Widget>[
                  toppart(),
                threecardpart(),
                 SizedBox(height:20),
                 addcardbutton(),
                 ],
             ):Text('check')
           ),
         )
         
    );
  }
  Widget threecardpart(){
    return  Column(
      children: <Widget>[
 twodotpart(),
                 visapart(),
                 ppart(),
      ],
      );
  }
    Widget addnewcard(){
    return  InkWell(
      onTap: (){
        setState(() {
          bodyselector=2;
          
        });
      },
      child:Card(
      margin: EdgeInsets.only(top: 13),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
      // decoration: BoxDecoration(
      //     boxShadow: [
      //     BoxShadow(
      //       color: Colors.blue
      //     )
      //     ]
      //   ),
        height: MediaQuery.of(context).size.height/2.1,
        width: MediaQuery.of(context).size.width/1.4,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 30,top: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset('images/twodots.png',
                scale: 5,)
              ],
            ),),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
              children: <Widget>[
   Text('Card Number',
   style: TextStyle(
     color: Colors.grey
   ),)
              ],
            )
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: '4120 4554 2134 9140',
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 16,
    )
  ),
)
            ),
                 Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 15),
              child: TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: 'CARD HOLDER NAME',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 14,
    )
  ),
)
            ),
            Container(
              child: Row(
                children: <Widget>[
       Container(
              width: MediaQuery.of(context).size.width/5,
              padding: EdgeInsets.only(left: 10,right: 10,top: 15),
              child: 
              TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: '  MM',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12,
    )
  ),
)
            ),       Container(
              width: MediaQuery.of(context).size.width/5,
              padding: EdgeInsets.only(left: 10,right: 10,top: 15),
              child: 
              TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: '   YY',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12,
    )
  ),
)
            ),
                   Container(
                     margin: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width/5,
              padding: EdgeInsets.only(left: 10,right: 10,top: 15),
              child: 
              TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: ' CVV',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12,
    )
  ),
)
            ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(

                    child: Text('CANCEL',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                    ),),
                 onTap: (){
                      setState(() {
                        bodyselector=0;

                      });
                 },
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        bodyselector=2;
                      });
                    },
                    child:Container(
                      margin: EdgeInsets.only(right:20),
                      height: MediaQuery.of(context).size.height/20,
                      width:MediaQuery.of(context).size.width/4,
decoration: BoxDecoration(
  color: greycolor,
  borderRadius: BorderRadius.circular(3)
),
                 
                    child: Center(
                      child: 
                    
                  Text('Add Card',
                  style: TextStyle(
                    color: whitecolor,
                    fontSize: 14,

                   ) ),
                  )
                  )
                  )
                
                 
                ],
              ),
            )
     
            
            
          ],
        ),
      ),
     ) );
  }
//   Widget ppartlist(){
//     return Container(
//       width: MediaQuery.of(context).size.width/1,
//       height: MediaQuery.of(context).size.height/4,
//       child: ListView.builder(
//       itemCount: 3,
//       scrollDirection: Axis.vertical,
//       itemBuilder: (BuildContext context,index)=>ppart(
// index==0?'':index==1?'Expiring soon!':'Expiring soon!',
// index==0?'images/twodots.png':index==1?'images/visa.png':'images/singlep.png',
// index
//       )),
//     );
//   }

  void leading() {
    if (bodyselector == 0) {
      AppRoutes.pop(context);
    }
    else if (bodyselector == 1) {
      setState(() {
        bodyselector = 0;
      });
    }
    else if (bodyselector == 2) {
      setState(() {
        bodyselector = 0;
      });
    }
  }
    Widget twodotpart(){ 
    return  Card(
              margin: EdgeInsets.only(left: 0,top:50),
              elevation: 0,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                    CircularCheckBox(
          value: someBooleanValue,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onChanged: (bool x1) {
         setState(() {
            someBooleanValue=x1;
         });
          }
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
   Widget visapart(){

 return  Card(
              margin: EdgeInsets.only(left: 0,top: 8),
              elevation: 0,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
  CircularCheckBox(
          value: someBooleanValue1,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onChanged: (bool x2) {
            
          setState(() {
            someBooleanValue1= x2;
          });
          ;
          }
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
                         Text('expiring soon!',
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
                      margin: EdgeInsets.only(right: 20),
                      child:Image.asset('images/visa.png',
                    scale:4)
                    ),
                  ],
                ),
              ),
         );
  }
    
   Widget ppart(){
    return 
                      Card(
              margin: EdgeInsets.only(left:0,top: 8),
              elevation: 0,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
    CircularCheckBox(
          value: someBooleanValue2,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onChanged: (bool x3) {
         setState(() {
            someBooleanValue2= x3;
         });
          }
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
                         Text('expiring soon!',
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
//     Widget ppart(String txt,String img,index){
//     return Card(
//               margin: EdgeInsets.only(left:0,top: 20),
//               elevation: 20,
//               child: Container(
//                 padding: EdgeInsets.only(left:10),
//                 height: MediaQuery.of(context).size.height/10,
//                 width: MediaQuery.of(context).size.width/1.2,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Row(
//                       children: <Widget>[
// InkWell(
//         onTap: () {
//           setState(() {
//             _value = !_value;
//           });
//         },
//         child: Container(
//           decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
//           child: Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: _value
//                 ? Icon(
//                     Icons.check,
//                     size: 17.0,
//                     color: Colors.white,
//                   )
//                 : Icon(
//                     Icons.check_box_outline_blank,
//                     size: 17.0,
//                     color: Colors.blue,
//                   ),
//           ),
//         ),
//       ),
//           Padding(padding: EdgeInsets.only(left:30),
//           child:Column(
//             children: <Widget>[
//                     Text('xxxx-6650',
//                       style:TextStyle(color: Color(0xff2F8FFF),
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold
//                       )),
//                               Text('$txt',
//                       style:TextStyle(
                        
//                       fontSize: 9,
//                       color:Colors.red,
//                       fontWeight: FontWeight.bold
//                       )),
//             ],
//           )
    
//           )
//                       ],
//                     ),
              
//                      Container(
//                       margin: EdgeInsets.only(right:20),
//                       child:Image.asset('$img',
//                     scale:4)
//                     ),
      
                    
//                   ],
//                 ),
//               ),
//             );
//   }
  Widget addcardbutton(){
    return GestureDetector(
      onTap: (){
        setState(() {
          bodyselector=1;
        });
      },
      child:Container(
      height: MediaQuery.of(context).size.height/14,
      width: MediaQuery.of(context).size.width/1.2,
decoration: BoxDecoration(
        color: greycolor,
        borderRadius: BorderRadius.circular(10 )
      ),
child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.add,
    size: 18,
    color: whitecolor,),
    SizedBox(width:4),
    Text('ADD NEW CARD',
    style: TextStyle(
      color: whitecolor,
      fontSize: 12,
      fontWeight: FontWeight.bold
    ),)

  ],
),
      )  );
  }
  Widget toppart(){
    return  Column(
      children: <Widget>[
   CarouselSlider(
              
                enableInfiniteScroll: true,
                height: 150.0,
               // autoPlayAnimationDuration: Duration(seconds:2),
                autoPlayInterval: Duration(seconds:4),
                //enlargeCenterPage: true,
                autoPlay: false,
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/card.png")
                            ),

                          ),

                      );
                    },
                  );
                }).toList(),
        ),
     /*   Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right:3),
            
height: 20,
width: 6,
decoration: BoxDecoration(
    color: Color(0xff4D8DBF),
  shape: BoxShape.circle
),
            ),
                  Container(
                    margin: EdgeInsets.only(right:2),
            
height: 20,
width:11,
decoration: BoxDecoration(
    color: Color(0xff4D8DBF),
  shape: BoxShape.circle
),
            ),
                  Container(
                    margin: EdgeInsets.only(right:3),
            
height: 20,
width: 6,
decoration: BoxDecoration(
    color: Color(0xff4D8DBF),
  shape: BoxShape.circle
),
            )
          ],
        )*/
      ],
    );
  
 
  }
  
}
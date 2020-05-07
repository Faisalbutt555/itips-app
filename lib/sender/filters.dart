import 'package:flutter/material.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';

import '../approuteclass.dart';

class Senderfilter extends StatefulWidget {
  @override
  _SenderfilterState createState() => _SenderfilterState();
}

class _SenderfilterState extends State<Senderfilter> {
  final GlobalKey<ScaffoldState> sendercaffoldKey =
      new GlobalKey<ScaffoldState>();
  int select = 0;
   double values=0.0;
  var newRange=0.0;
 // var selectedRange=RangeValues(0.2,0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottompart(),
      key: sendercaffoldKey,
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(90), // here the desired height
      child: Padding(
      padding: EdgeInsets.only(top: 0),
      child:SenderAppbar(context, false, sendercaffoldKey, 'Filters', false),
          )),
      drawer: Senderdrawer(),
      body: centerpart(),
    );
  }

  Widget centerpart() {
    return Column(
      children: <Widget>[
        filterpart('Filter'),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            allpart('All', 1),
            allpart('Popular', 2),
            allpart('Deals', 3),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            allpart('Bar', 4),
            allpart('Bakery', 5),
            allpart('Cafe', 6),
          ],
        ),
        Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                allpart('Restaurant', 7),
              ],
            )),
            filterpart('Distance'),
                       Container(
                         margin: EdgeInsets.only(top:10),
              child:
              Slider(
                
              inactiveColor: Colors.black54.withOpacity(0.3),
                  activeColor: greycolor,
        value: values ,
        onChanged: (newrating){
setState(()=>values=newrating
  
);
        },
        divisions: 10,
        min: 0,
        max: 100,


    )
            ),
            Padding(padding: EdgeInsets.only(right:30),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('$values'+'Miles',
                style: TextStyle(
                  color: greycolor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),
                )
              ],
            ))

      ],
    );
  }
  Widget bottompart(){
    return Padding(padding: EdgeInsets.only(left:20,right:20),
    child:Row(
      
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  InkWell(
    onTap: (){},
    child:Container(
      margin: EdgeInsets.only(bottom: 20),
     decoration: BoxDecoration(
        color: greycolor,
      borderRadius: BorderRadius.circular(7)
      ),
    height: MediaQuery.of(context).size.height/14,
    width: MediaQuery.of(context).size.width/3,
    child: Center(
      child:Text('Clear Filter',
      style: TextStyle(
        color: whitecolor,
      fontWeight: FontWeight.bold,
        
        fontSize: 16
      ),
  ),
    ),
  )),
    InkWell(
    onTap: (){
      AppRoutes.pop(context);
    },
    child:Container(
      
      decoration: BoxDecoration(
        color: greycolor,
      borderRadius: BorderRadius.circular(7)
      ),
      margin: EdgeInsets.only(bottom: 20),
    height: MediaQuery.of(context).size.height/14,
    width: MediaQuery.of(context).size.width/3,
    child: Center(
      child:Text('Filter',
      style: TextStyle(
        color: whitecolor,
      fontWeight: FontWeight.bold,
        fontSize: 16
      ),
  ),
    ),
  ))
 
],));
  }

  Widget allpart(String txt, int index) {
    return InkWell(
      onTap: (){
       setState(() {
         select=index;
       });
      },
      child: Card(
            color: Color(0xffF3F2F2),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    width:1,
                    color:index==select?greycolor:whitecolor,
                  )),
              height: 30,
              width: MediaQuery.of(context).size.width / 3.6,
              child: Center(
                  child: Text(
                '$txt',
                style: TextStyle(
                  fontSize: 16,
                  color: greycolor,
                  fontWeight: FontWeight.bold,
                ),
              )),
            )));
  }

  Widget filterpart(String txt) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 15,
        child: Text(
          '$txt',
          style: TextStyle(
              color: greycolor, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}

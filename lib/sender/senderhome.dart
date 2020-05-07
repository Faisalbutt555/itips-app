import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/constantcolors.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import 'package:itipsfinal/sender/senderdrawer.dart';
import 'package:itipsfinal/sender/toprated.dart';
import 'package:itipsfinal/sender/viewclass.dart';

import '../maindrawer.dart';

class Senderhome extends StatefulWidget {
  @override
  _SenderhomeState createState() => _SenderhomeState();
}

class _SenderhomeState extends State<Senderhome> {
  final GlobalKey<ScaffoldState> sendercaffoldKey = new GlobalKey<
      ScaffoldState>();
  Completer <GoogleMapController> _controller = Completer();


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  int bodytype = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottompart(),
      key: sendercaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child: SenderAppbar(context, true, sendercaffoldKey,
            bodytype == 0 ? 'Home' : bodytype == 1 ? 'Hot Deal':'Top Rated', true),
      ),
      drawer: Senderdrawer(),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: bodytype == 0 ? Stack(
          children: <Widget>[
            Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .71,

                child: googlemap()),


            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: new BoxDecoration(
                        color: greycolor,
                        borderRadius: new BorderRadius.all(
                        const Radius.circular(10.0),
                        )
                    ),
                    width: MediaQuery.of(context).size.width*.3,
                    height: 50,
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.search,color: Colors.white,),
                         SizedBox(
                           width: 5,
                         ),
                          Text(
                            'Search',style: TextStyle(color: Colors.white),
                          )

                        ],
                      ),

                    ),
                  ),
                ),
              ),
            ),
          ],
        ) : bodytype == 1 ? ListView.builder(
            itemCount: 9,
            itemBuilder: (BuildContext context, index) =>
                hotDealpart(
                    index == 0 ? 'images/parath1.png' : index == 1
                        ? 'images/parath2.png'
                        : index == 2 ? 'images/parath3.png' : index == 3
                        ? 'images/parath4.png'
                        : 'images/parath5.png',
                    index == 0 ? 'Gourmet Toast' : index == 1
                        ? 'Arabic Roll'
                        : index == 2 ? 'Pizza slice' : index == 3
                        ? 'Tower Burger'
                        : 'Arabic Role',
                    index == 0 ? 'Broadway' : index == 1
                        ? 'Starbucks'
                        : index == 2 ? 'Pizza Point' : index == 3
                        ? 'Broadway'
                        : 'Starbucks',
                    index == 0 ? 'Tue-Sat  4pm to 7pm' : index == 1
                        ? 'Tue-Sat  4pm to 7pm'
                        : index == 2 ? 'All december' : index == 3
                        ? 'Tue-Sat  4pm to 7pm'
                        : 'All december',
                    index == 0 ? '21Feb to 26 Feb' : index == 1
                        ? '21Feb to 26 Feb'
                        : index == 2 ? '' : index == 3
                        ? '21Feb to 26 Feb'
                        : index == 4 ? '' : '21Feb to 26 Feb',
                    index == 0 ? 25 : index == 1 ? 25 : index == 2
                        ? 10
                        : index == 3 ? 15 : index == 4 ? 25 : 10,
                    index == 0 ? '%' : index == 1 ? '%' : index == 2
                        ? 'E'
                        : index == 3 ? '%' : index == 4 ? '%' : index == 5
                        ? '%'
                        : 'E',
                    index == 0 ? 2 : index == 1 ? 4 : index == 2 ? 5 : index ==
                        3 ? 2 : index == 4 ? 4 : 5,
                    index
                )
        ) : ListView.builder(
            itemCount: 9,
            itemBuilder: (BuildContext context, index) =>
                favoritePart(
                    index == 0 ? 'images/star1.png' : index == 1
                        ? 'images/star2.png'
                        : index == 2 ? 'images/star3.png' : index == 3
                        ? 'images/star1.png'
                        : 'images/parath5.png',
                    index == 0 ? 'Broadway' : index == 1
                        ? 'Star bucks'
                        : index == 2 ? 'Pizza Point' : index == 3
                        ? 'Broadway'
                        : 'Starbucks',
                    index == 0 ? 25 : index == 1 ? 25 : index == 2
                        ? 10
                        : index == 3 ? 15 : index == 4 ? 25 : 10,

                    index
                )
        ),


      ),
    );
  }

  Widget hotDealpart(String img, String txt1, String txt2, String txt3,
      String txt4, txt5, String sign, int txt, index) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, top: 5),
      elevation: 10,
      child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height / 8,
          padding: EdgeInsets.only(left: 05, right: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(

                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(6)
                    ),

                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 8,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                    margin: EdgeInsets.only(top: 0, bottom: 0),
                    child: Image.asset('$img'),

                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('$txt1',
                            style: TextStyle(
                                color: Color(0xff414141),
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                            ),),
                          SizedBox(height: 2),
                          Text('$txt2',
                            style: TextStyle(
                                color: buttoncolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                            ),),
                          SizedBox(height: 7),
                          Text('$txt3',
                            style: TextStyle(
                                color: Color(0xff414141),
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),),
                          SizedBox(height: 7),
                          Text('$txt4',
                            style: TextStyle(
                                color: Color(0xff414141),
                                fontWeight: FontWeight.w500,
                                fontSize: 10
                            ),)

                        ],
                      )
                  )
                ],
              ),


              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[

                  Container(

                    decoration: BoxDecoration(
                        color: buttoncolor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            topRight: Radius.circular(4)
                        )
                    ),
                    padding: EdgeInsets.only(right: 3),
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
                    padding: EdgeInsets.only(right: 05, top: 20),

                    child: Text('20€', style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: buttoncolor),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 05, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('images/location.png',
                          scale: 4,),
                        SizedBox(width: 2),
                        Text('${txt}Km away',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff414141)
                          ),),

                      ],
                    ),)

                ],
              )

            ],
          )
      ),
    );
  }

  Widget favoritePart(String img, String txt1, int txt2, int index) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, top: 5),
      elevation: 10,
      child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height / 7.6,
          padding: EdgeInsets.only(left: 05, right: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    child: Image.asset('$img'),


                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                          Text('$txt1',
                            style: TextStyle(
                                color: Color(0xff414141),
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                            ),),

                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('images/location.png',
                                scale: 4,),
                              SizedBox(width: 2),
                              Text('${txt2}Km away',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff414141)
                                ),),

                            ],
                          ),

                        ],
                      )
                  )
                ],
              ),


              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 10, top: 3),
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            index == 0 ?
                            Row(
                              children: <Widget>[
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),

                              ],
                            ) : index == 1 ? Row(
                              children: <Widget>[
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,)
                              ],
                            ) : index == 2 ? Row(
                              children: <Widget>[
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),

                              ],
                            ) : index == 3 ? Row(
                              children: <Widget>[
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),

                              ],
                            ) : index == 4 ? Row(
                              children: <Widget>[
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),

                              ],
                            ) : Row(
                              children: <Widget>[
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                                Image.asset('images/star.png',
                                  color: Colors.yellow,
                                  scale: 7,),
                              ],
                            ),
                          ],
                        ),
                        index == 0 ? Icon(Icons.favorite,
                          color: Color(0xffFB7171),
                          size: 17,
                        ) : index == 1 ?
                        Icon(Icons.favorite,
                          color: Color(0xffFB7171),
                          size: 17,) : index == 2 ?
                        Icon(Icons.favorite,
                          color: Color(0xffC8C8C8),
                          size: 17,) : index == 3 ?
                        Icon(Icons.favorite,
                          color: Color(0xffFB7171)
                          , size: 17,) : index == 4 ? Icon(Icons.favorite,
                          color: Color(0xffFB7171),
                          size: 17,) : index == 5 ? Icon(Icons.favorite,
                            color: Color(0xffC8C8C8),
                            size: 17) : index == 6 ? Icon(Icons.favorite,
                            size: 17,
                            color: Color(0xffC8C8C8)) : index == 7 ? Icon(
                            Icons.favorite,
                            size: 17,
                            color: Color(0xffC8C8C8)) : index == 8 ? Icon(Icons
                            .favorite,
                            size: 17,
                            color: Color(0xffC8C8C8)) : index == 9 ? Icon(Icons
                            .favorite,
                            size: 17,
                            color: Color(0xffC8C8C8)) : index == 10 ? Icon(
                            Icons.favorite,
                            size: 17,

                            color: Color(0xffC8C8C8)) : Icon(Icons.favorite,
                            size: 17,
                            color: Color(0xffC8C8C8))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 5),
                    child: InkWell(
                      onTap: () {
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

  Widget googlemap() {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        // _controller.complete(controller);
      },
    );
  }

  Widget bottompart() {
    return Card(
        elevation: 15,
        child: Container(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)
                  ),
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.only(left: 13, right: 50),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.2,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(

                          child: bodytype == 0 ? Container(
                            padding: EdgeInsets.only(left: 10, right: 10),

                            height: MediaQuery
                                .of(context)
                                .size
                                .height / 22,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 4.2,
                            decoration: BoxDecoration(
                                color: buttoncolor,
                                borderRadius: BorderRadius.circular(18)
                            ),
                            child: Row(

                              children: <Widget>[
                                Image.asset('images/mapselected.png',
                                  scale: 4,),
                                SizedBox(width: 4),
                                Text('Maps',
                                    style: TextStyle(color: whitecolor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                    ))
                              ],
                            ),
                          ) : Image.asset('images/mapselected.png',
                            color: greycolor,
                            scale: 4,),
                          onTap: () {
                            setState(() {
                              bodytype = 0;
                            });
                          },
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              bodytype = 1;
                            });
                          },
                          child: bodytype == 1 ? Container(
                            padding: EdgeInsets.only(left: 04, right: 4),

                            height: MediaQuery
                                .of(context)
                                .size
                                .height / 22,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 3.9,
                            decoration: BoxDecoration(
                                color: buttoncolor,
                                borderRadius: BorderRadius.circular(18)
                            ),
                            child: Row(

                              children: <Widget>[
                                Image.asset('images/spoon.png',
                                  scale: 4,
                                  color: whitecolor,),
                                SizedBox(width: 2),
                                Text('Hot Deals',
                                    style: TextStyle(color: whitecolor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ))
                              ],
                            ),
                          ) : Image.asset('images/spoon.png',
                            scale: 3,),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              bodytype = 2;
                            });
                          },
                          child: bodytype == 2 ? Container(
                            padding: EdgeInsets.only(left: 04, right: 4),

                            height: MediaQuery
                                .of(context)
                                .size
                                .height / 22,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 3.7,
                            decoration: BoxDecoration(
                                color: buttoncolor,
                                borderRadius: BorderRadius.circular(18)
                            ),
                            child: Row(

                              children: <Widget>[
                                Image.asset('images/star.png',
                                  scale: 4,
                                  color: whitecolor,),
                                SizedBox(width: 2),
                                Text('Top Rated',
                                    style: TextStyle(color: whitecolor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ))
                              ],
                            ),
                          ) : Image.asset('images/star.png',
                            scale: 3,),
                        )
                      ],
                    ),

                  )
              )
            ],
          ),
        ));
  }
}

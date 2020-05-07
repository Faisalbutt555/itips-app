import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:itipsfinal/sender/senderappbar.dart';
import '../constantcolors.dart';
class Addservices extends StatefulWidget {
  @override
  _AddservicesState createState() => _AddservicesState();
}

class _AddservicesState extends State<Addservices> {
final GlobalKey<ScaffoldState> receivercaffoldKey = new GlobalKey<ScaffoldState>();
  //  File _image;

  // Future getImage() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.camera);

  //   setState(() {
  //     _image = image;
  //   });
  // }
@override
  Widget build(BuildContext context) {
    return Scaffold(    
        key: receivercaffoldKey,
     appBar:PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:20),
        child: SenderAppbar(context,false, receivercaffoldKey ,'Add Services',false)
      ) ),
      body: SingleChildScrollView(
        child: txtfeild(),
      ),

    );
  }
  Widget txtfeild(){
    return Column(
children: <Widget>[
  Padding(
    padding: EdgeInsets.only(
    top: 20,),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
            Padding(
            padding: EdgeInsets.only(left:15),
          child:Text('Service Name',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
                           Container(
                  margin: EdgeInsets.only(top:3,left:9,right:9,),
            height: MediaQuery.of(context).size.height/13,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'Pizza Burger',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,
                ),
              contentPadding: EdgeInsets.only(left:18,top:0,),
             
            ),
            ),
          ),

    ],
  )
  ),

      Padding(
    padding: EdgeInsets.only(
    top: 20,),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
            Padding(
            padding: EdgeInsets.only(left:15),
          child:Text('Enter Price',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
                           Container(
                  margin: EdgeInsets.only(top:3,left:9,right:9,),
            height: MediaQuery.of(context).size.height/13,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: '120 €',
                hintStyle: TextStyle(
                  color: Color(0xff667980),
                  fontWeight:FontWeight.bold,
                  fontSize: 16,
                ),
              
              contentPadding: EdgeInsets.only(left:17,top:17,),

            ),
            ),
          ),

    ],
  )
  ),
      Padding(
    padding: EdgeInsets.only(
    top: 20,),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
            Padding(
            padding: EdgeInsets.only(left:15),
          child:Text('Enter Price',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) ),),
                           Container(
                  margin: EdgeInsets.only(top:3,left:9,right:9,),
            height: MediaQuery.of(context).size.height/5.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
              
              color:greycolor
            )),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
           
              
              contentPadding: EdgeInsets.only(left:17,top:17,),
            
            ),
            ),
          ),

    ],
  )
  ),
      Padding(
    padding: EdgeInsets.only(
    top: 20,),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
            Padding(
            padding: EdgeInsets.only(left:15),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start  ,
            children: <Widget>[
   Text('Upload Profile Images',
          style: TextStyle(
            color: greycolor,
            fontSize: 12,
            fontWeight: FontWeight.w400
           ) )
            ],
          )
       ,),

             Padding(
          padding: EdgeInsets.only(left:4,top:4),
        child:Row(
          children: <Widget>[
 Column(
          children: <Widget>[
         Container(
           margin: EdgeInsets.only(left: 10),
                         height: MediaQuery.of(context).size.height/9,
                         width: MediaQuery.of(context).size.width/3.7,
                        child:DottedBorder(
                        color: greycolor,
                        strokeWidth: .8,
                  child:Center(
        child:Image.asset('images/dotbackimage.png',
                          scale:3.5,
                        ),
                      )) ),
                      InkWell(
                        onTap: (){
    //    getImage();
                        },
                        child:Container(
                      margin: EdgeInsets.only(top:6,left:4),
                      width:MediaQuery.of(context).size.width/3.6,
                      height: MediaQuery.of(context).size.height/22,
                      child:RaisedButton(onPressed: (){},
                      color: buttoncolor,
                     child: 
                     Text('Add Image',
                     style: TextStyle(
                       color: whitecolor,
                       fontSize:10,
                       //fontWeight: FontWeight.w400
                     ),),
                       ) ) )
          ],
        ),
          ],
        )
        ),
         

    ],
  )
  )
],
    );
  }
  

}

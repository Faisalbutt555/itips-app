import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itipsfinal/receiver/receiverhome.dart';
import 'package:itipsfinal/sender/senderhome.dart';
import 'package:itipsfinal/textformfeild.dart';
import 'approuteclass.dart';
import 'constantcolors.dart';
class Mainloginscreen extends StatefulWidget {
@override
_MainloginscreenState createState() => _MainloginscreenState();
}
class _MainloginscreenState extends State<Mainloginscreen> {
  int txtrotatechk = 0; // for login/signup and forgot selection
  int button = 0;
  int emp=0;
  var route;
  int buisnesemplioy = 0;
  int group = 1; // for radio  button
  final loginEmail = TextEditingController();
  final loginPassword = TextEditingController();
  final signupfullname = TextEditingController();
  final signupemail = TextEditingController();
  final signupnumber = TextEditingController();
  final signuppassword = TextEditingController();
  final signupconfirmpassword = TextEditingController();
  final placework = TextEditingController();
  final position = TextEditingController();
  final categoryy = TextEditingController();
  final buisnessname = TextEditingController();
  final livelocation = TextEditingController();
  final forgotemail = TextEditingController();
  String Categorydropdown, businessname, placeOfWork;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xff3A3F58)));
    return SafeArea(
      child: Scaffold(
          backgroundColor: greycolor,
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      logsignforget(),
                      Expanded(
                        child: cardpart()),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }

  Widget cardpart() {
  
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Card(
            
            color: greycolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
              bottomLeft: Radius.circular(120),
            )),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.2,
              width: MediaQuery.of(context).size.width / 1.1,
            ),
          ),
        ),

        Align(
          alignment: Alignment.topRight,
          child: Card(
         
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              bottomLeft: Radius.circular(90),
            )),
            child: Container(
               padding: EdgeInsets.only(top:60,bottom:8),
              height: MediaQuery.of(context).size.height *.9,
              width: MediaQuery.of(context).size.width * .84,
              child: Column(
               mainAxisAlignment:txtrotatechk==3? MainAxisAlignment.start:MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: txtrotatechk==0? EdgeInsets.only(bottom:0):
                  EdgeInsets.only(  bottom:8),
                   // color: Colors.green,
                    height: MediaQuery.of(context).size.height/3.3,
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Image.asset(
                      'images/homelogo.png',
                      scale: 3.5,
                    ),
                  ),
                  
                  Padding(
                      padding: EdgeInsets.only(
                        
                          left: txtrotatechk == 2 ? 35 : 40),
                      child: Row(
                        children: <Widget>[
                          txtrotatechk == 0
                              ? Image.asset(
                                  'images/login.png',
                                  scale: 4,
                                )
                              : txtrotatechk == 2
                                  ? Image.asset(
                                      'images/signup.png',
                                      scale: 4.7,
                                    )
                                  : txtrotatechk == 3
                                      ? Image.asset(
                                          'images/forgotpassword.png',
                                          scale: 4,
                                        )
                                        
                                      : Image.asset(
                                          'images/signup.png',
                                          scale: 4.7,
                                        ),
                                        
                        ],
                      )),

                txtrotatechk==0?buttonpart():txtrotatechk==2?buttonpart():
                txtrotatechk==1?buttonpart(): txtrotatechk==5?buttonpart(): txtrotatechk==6?buttonpart():Card(),
],

                    ) 
                    ,
                  ),
                  txtrotatechk == 0
                      ?  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                            
                              Textfeildclass(
                                obscuretext: false,
                                feildcontroller: loginEmail,
                                keyboardType: TextInputType.emailAddress,
                                labletxt: 'Email',
                                iconn: Icon(
                                  Icons.email,
                                  size: 19,
                                  color: Color(0xffC5C5C5),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Textfeildclass(
                                obscuretext: true,
                                feildcontroller: loginPassword,
                                keyboardType: TextInputType.text,
                                labletxt: 'Password',
                                iconn: Icon(
                                  Icons.vpn_key,
                                  color: Color(0xffC5C5C5),
                                  size: 19,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top:30),
                              ),
                              continuebutton()
                            ],

                          )
                      : txtrotatechk == 2
                          ?  Column(
                                children: <Widget>[
                                 SizedBox(height:4),
                                  Textfeildclass(
                                    obscuretext: false,
                                    feildcontroller: signupfullname,
                                    keyboardType: TextInputType.text,
                                    labletxt: 'Full Name',
                                    iconn: Icon(
                                      Icons.person,
                                      size: 19,
                                      color: Color(0xffC5C5C5),
                                    ),
                                  ),
                                  SizedBox(height: 04),
                                  Textfeildclass(
                                    obscuretext: false,
                                    feildcontroller: signupemail,
                                    keyboardType: TextInputType.emailAddress,
                                    labletxt: 'Email',
                                    iconn: Icon(
                                      Icons.email,
                                      color: Color(0xffC5C5C5),
                                      size: 19,
                                    ),
                                  ),
                                  SizedBox(height: 04),
                                  Textfeildclass(
                                    obscuretext: false,
                                    feildcontroller: signupnumber,
                                    keyboardType: TextInputType.phone,
                                    labletxt: 'Phone Number',
                                    iconn: Icon(
                                      Icons.phone,
                                      color: Color(0xffC5C5C5),
                                      size: 19,
                                    ),
                                  ),
                                   SizedBox(height: 04),
                                  Textfeildclass(
                                    obscuretext: true,
                                    feildcontroller: signuppassword,
                                    keyboardType: TextInputType.text,
                                    labletxt: 'Password',
                                    iconn: Icon(
                                      Icons.vpn_key,
                                      color: Color(0xffC5C5C5),
                                      size: 19,
                                    ),
                                  ),
                                   SizedBox(height:04),
                                  Textfeildclass(
                                    obscuretext: true,
                                    feildcontroller: signupconfirmpassword,
                                    keyboardType: TextInputType.text,
                                    labletxt: 'Confirm Password',
                                    iconn: Icon(
                                      Icons.vpn_key,
                                      color: Color(0xffC5C5C5),
                                      size: 19,
                                    ),
                                  ),
                                   SizedBox(height: 06),
                                  continuebutton(),
                                       button==1
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0),
                                          child: gradienttwodots())
                                      : Container()
                                ],
                              )
                          
                          : txtrotatechk == 3
                              ? Column(
                                    children: <Widget>[

                                      Text(
                                        'Please enter your email address.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                      
                                      Text(
                                        ' Password change link will be sent to your',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                      
                                      Text(
                                        ' email address.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                        Container(
                                        margin: EdgeInsets.only(top:20),
                                      ),
                                    Textfeildclass(
                                        obscuretext: false,
                                        feildcontroller: forgotemail,
                                        keyboardType: TextInputType.text,
                                        labletxt: 'Email',
                                        iconn: Icon(
                                          Icons.email,
                                          color: Color(0xffC5C5C5),
                                          size: 19,
                                        ),
                                      ),
                                      continuebutton(),
                                      Container(
                                        margin: EdgeInsets.only(top:10),
                                      )
                                    
                                    ],
                                  )
                               :
                               Column(
                                    children: <Widget>[
                                     
                                     Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              activeColor: greycolor,
                                              value: 1,
                                              groupValue: group,
                                              onChanged: (r1) {
                                              setState(() {
                                                  group = r1;
                                                 txtrotatechk=5;
                                            //   epmloypart();
                                                });
                                              }),
                                          Text(
                                            'Employee',
                                            style: TextStyle(
                                                color: greycolor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Radio(
                                              activeColor: greycolor,
                                              value: 2,
                                              groupValue: group,
                                              onChanged: (r2) {
                                                setState(() {
                                                  group = r2;
                                                   txtrotatechk=6;
                                               //  buisnesspart();
                                                });
                                              }),
                                              Text(
                                             'Business',
                                            style: TextStyle(
                                                color: greycolor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                              txtrotatechk==5?epmloypart():
                              txtrotatechk==6?
                             buisnesspart():epmloypart()
                             
                                    ],
                                  ),
                
               Padding(
                 padding: EdgeInsets.only(right:20),
               child: 
               
                Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                              txtrotatechk == 0
                                  ? 'Dont have an account ?'
                                  : txtrotatechk == 2
                                      ? 'Already a member ?'
                                      : txtrotatechk == 1
                                          ? 'Already a member ?'
                                          : txtrotatechk == 5
                                              ? 'Already a member ?'
                                              : txtrotatechk == 6
                                                  ? 'Already a member ?'
                                                  : '',
                              style: TextStyle(
                                  color: Color(0xff3A3F58),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 13,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                txtrotatechk == 0
                                    ? txtrotatechk = 2
                                    : txtrotatechk == 2
                                        ? txtrotatechk = 0
                                        : txtrotatechk = 0;
                              });
                            },
                            child: Text(
                                txtrotatechk == 0
                                    ? 'Signup'
                                    : txtrotatechk == 2
                                        ? 'Login'
                                        : txtrotatechk == 1
                                            ? 'Login'
                                            : txtrotatechk == 5
                                                ? 'Login'
                                                : txtrotatechk == 6
                                                    ? 'Login'
                                                    : '',
                                style: TextStyle(
                                    color: buttoncolor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                 )  ),
  
                      //),
           
                ],
              ),
            ),
          ),
        ),
        //dot part call
        Align(
          alignment: Alignment.centerLeft,
          child: InkWell(
              child: Container(
            margin: EdgeInsets.only(
                top: txtrotatechk == 0
                    ? MediaQuery.of(context).size.height/5.2
                    : txtrotatechk == 2
                        ?MediaQuery.of(context).size.height/3.5
                        : txtrotatechk == 3
                            ? MediaQuery.of(context).size.height/2.6
                            : txtrotatechk == 1
                                ? MediaQuery.of(context).size.height/3.3
                                : txtrotatechk == 5
                                    ?MediaQuery.of(context).size.height/3.3
                                    : txtrotatechk == 6 ?MediaQuery.of(context).size.height/3.3: 10,
                left: 5),
            height: 100,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius:BorderRadius.circular(30),
                color: Colors.white),
            child: Center(
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius:BorderRadius.circular(30),
                    gradient: LinearGradient(
                        colors: [Color(0xffEE6A59), Color(0xffF9AC67)])),
              ),
            ),
          )),
        ),
      ],
    );
  }

  Widget gradienttwodots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height / 50,
          width: MediaQuery.of(context).size.width / 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: buttoncolor,
              gradient: LinearGradient(
                  colors: [Color(0xffEE6A59), Color(0xffF9AC67)])),
        ),
        Container(
          margin: EdgeInsets.only(left: 5, top: 10),
          height: MediaQuery.of(context).size.height / 50,
          width: MediaQuery.of(context).size.width / 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1, color: Colors.grey)),
        ),
      ],
    );
  }
  Widget continuebutton(){
    return   GestureDetector(
                      onTap: () {
                        button == 0 && txtrotatechk == 0
                            ? AppRoutes.push(context, Senderhome())
                            : txtrotatechk == 0 && button == 1
                                ? AppRoutes.push(context, Receiverhome())
                                : txtrotatechk = 2;
                                
                        setState(() {
                          //for employ and buisness
                          txtrotatechk == 2&& button == 0
                          ?txtrotatechk = 0
                              : txtrotatechk == 2 && button == 1
                                  ? txtrotatechk =1
                                  : txtrotatechk = 0;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 38,
                          top: txtrotatechk == 0
                              ? 14
                              : txtrotatechk == 2 && button == 1
                                  ? 0
                                  : txtrotatechk == 2 && button == 0
                                      ?0
                                      : txtrotatechk == 5 && button == 1
                                          ? 13
                                          : txtrotatechk == 6 && button == 1
                                              ? 1
                                              : txtrotatechk == 3 ? 30 : 3,
                        ),
                        child: Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * .41,
                               ),
                            height: MediaQuery.of(context).size.height / 17,
                            width: MediaQuery.of(context).size.width / 3.2,
                            decoration: BoxDecoration(
                              color: buttoncolor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: txtrotatechk == 0
                                      ? 25
                                      : txtrotatechk == 2 && button == 0
                                          ? 12
                                          : txtrotatechk == 2 && button == 1
                                              ? 20
                                              : txtrotatechk == 3 ?8 : 15,
                                  right: txtrotatechk == 0
                                      ? 10
                                      : txtrotatechk == 2 ? 10 : 6.8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    txtrotatechk == 0
                                        ? 'Login'
                                        : txtrotatechk == 2 && button == 0
                                            ? 'Signup'
                                            : txtrotatechk == 3 
                                               
                                                ? 'Continue'
                                                : txtrotatechk == 1 &&
                                                        button == 1
                                                    ? 'Signup'
                                                    : txtrotatechk == 5 &&
                                                            button == 1
                                                        ? 'Signup'
                                                        : txtrotatechk == 6 &&
                                                                button == 1
                                                            ? 'Signup'
                                                            : 'Next',
                                    style: TextStyle(
                                        color: whitecolor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: whitecolor,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: buttoncolor,
                                      size: 13,
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ));
                 
  }

Widget buisnesspart() {
    return 
    
    Column(
        children: <Widget>[
         Textfeildclass(
            obscuretext: false,
            feildcontroller: livelocation,
            keyboardType: TextInputType.text,
            labletxt: 'Category',
            iconn: Icon(
              Icons.arrow_drop_down,
              color: Color(0xffC5C5C5),
              size: 22,
            ),
          ),
   SizedBox(height:3),
              Textfeildclass(
            obscuretext: false,
            feildcontroller: livelocation,
            keyboardType: TextInputType.text,
            labletxt: 'Buisness Name',
           
          ),
              SizedBox(height:3),
          Textfeildclass(
            obscuretext: false,
            feildcontroller: livelocation,
            keyboardType: TextInputType.text,
            labletxt: 'Live Location',
            iconn: Icon(
              Icons.location_on,
              color: Color(0xffC5C5C5),
              size: 19,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 54, top: 07),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 4.8,
                          child: DottedBorder(
                              color: greycolor,
                              strokeWidth: .8,
                              child: Center(
                                child: Image.asset(
                                  'images/dotbackimage.png',
                                 scale: 1,
                                ),
                              ))),
                      Container(
                          margin: EdgeInsets.only(top: 3),
                          width: MediaQuery.of(context).size.width /4.4,
                          height: MediaQuery.of(context).size.height / 30,
                          child: RaisedButton(
                            onPressed: () {},
                            color: buttoncolor,
                            child: Text(
                              'Add Image',
                              style: TextStyle(
                                color: whitecolor,
                                fontSize: 8                  ,
                                //fontWeight: FontWeight.w400
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              )
              ),
              gradienttwodots()
      
              
        ],
      
    );
  }
Widget epmloypart() {
    return  
    Column(
          children: <Widget>[
      
                  Textfeildclass(
              obscuretext: false,
              feildcontroller: position,
              keyboardType: TextInputType.text,
              labletxt: 'Place of work',
              iconn: Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: Color(0xffC5C5C5),
              ),
            ),
            SizedBox(
              height:12
              ),
            Textfeildclass(
              obscuretext: false,
              feildcontroller: position,
              keyboardType: TextInputType.text,
              labletxt: 'Position',
              iconn: Icon(
                Icons.person,
                size: 20,
                color: Color(0xffC5C5C5),
              ),
            ),
            SizedBox(
              height: 5,
            ),
      Padding(
              padding: EdgeInsets.only(left: 54, top: 0),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 4.8,
                          child: DottedBorder(
                              color: greycolor,
                              strokeWidth: .8,
                              child: Center(
                                child: Image.asset(
                                  'images/dotbackimage.png',
                                 scale: 1,
                                ),
                              ))),
                      Container(
                          margin: EdgeInsets.only(top: 3),
                          width: MediaQuery.of(context).size.width /4.4,
                          height: MediaQuery.of(context).size.height / 30,
                          child: RaisedButton(
                            onPressed: () {},
                            color: buttoncolor,
                            child: Text(
                              'Add Image',
                              style: TextStyle(
                                color: whitecolor,
                                fontSize: 8                  ,
                                //fontWeight: FontWeight.w400
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              )
              ),
            gradienttwodots(),
          ],
    );
  }
Widget buttonpart() {
    return Container(
      height: MediaQuery.of(context).size.height / 15.5,
      width: MediaQuery.of(context).size.width / 1.54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: .9,
            color: Colors.grey,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
              onTap: () {
                setState(() {
                  button = 0;
                 // txtrotatechk>4?
                  txtrotatechk=2;
                  //:txtrotatechk=txtrotatechk
                  ;
                });
              },
              child: Container(
                  margin: EdgeInsets.only(left: 4),
                  decoration: BoxDecoration(
                    color: button == 0 ? greycolor : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: MediaQuery.of(context).size.height / 19.5,
                  width: MediaQuery.of(context).size.width / 3.6,
                  child: Center(
                    child: Text(
                      'Sender',
                      style: TextStyle(
                          color: button == 0 ? whitecolor : greycolor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ))),
          InkWell(
              onTap: () {
                setState(() {
                  button = 1;
                });
              },
              child: Container(
                  margin: EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    color: button == 1 ? greycolor : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: MediaQuery.of(context).size.height / 19.5,
                  width: MediaQuery.of(context).size.width / 3.3,
                  child: Center(
                    child: Text(
                      ' Receiver ',
                      style: TextStyle(
                          color: button == 1 ? whitecolor : greycolor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )))
        ],
      ),
    );
  }
Widget logsignforget() {
    return Padding(
        padding: EdgeInsets.only(left: 14),
        child: Container(
            height: 
                 MediaQuery.of(context).size.height / 2.3,
               
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      txtrotatechk = 0;
                    });
                  },
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: txtrotatechk == 0 ? redcolor : whitecolor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      txtrotatechk = 2;
                    });
                  },
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                        txtrotatechk == 3
                            ? ''
                            : txtrotatechk == 1
                                ? 'Signup'
                                : txtrotatechk == 5
                                    ? 'Signup'
                                    : txtrotatechk == 6 ? 'Signup' : 'Signup',
                        style: TextStyle(
                            color: txtrotatechk == 2
                                ? redcolor
                                : txtrotatechk == 1
                                    ? redcolor
                                    : txtrotatechk == 5
                                        ? redcolor
                                        : txtrotatechk == 6
                                            ? redcolor
                                            : whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        txtrotatechk = 3;
                      });
                    },
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        txtrotatechk == 2
                            ? ''
                            : txtrotatechk == 1
                                ? ''
                                : txtrotatechk == 5
                                    ? ''
                                    : txtrotatechk == 6
                                        ? ''
                                        : 'Forgot Password',
                        style: TextStyle(
                            color: txtrotatechk == 3 ? redcolor : whitecolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            )));
  }
}

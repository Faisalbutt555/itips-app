import 'package:flutter/material.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/sender/filters.dart';
import '../constantcolors.dart';

class SenderAppbar extends PreferredSize{

  bool leading = true;
  SenderAppbar(BuildContext context,drawer,keyScaf,title,image)
  :super(
    preferredSize:Size.fromHeight(0),
    child:Container(
        decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft : Radius.circular(20),bottomRight: Radius.circular(20.0)),
              color: greycolor
              ),
              child:AppBar(
                elevation: 10,
                backgroundColor: Colors.transparent,
                leading: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: drawer==true?
                  InkWell(
                          onTap: () {
                            keyScaf.currentState.openDrawer();
                          },
                          child: Image.asset(
                          'images/drawerimage.png',
                            scale: 4,
                          ),
                        )
                        :Padding(padding:EdgeInsets.only(bottom: 20),
                        child:IconButton(icon: Icon(Icons.arrow_back_ios), onPressed:(){
                        AppRoutes.pop(context);
                        }),
                        ),
                ),
                      title:Padding(
                        padding: EdgeInsets.only(top: 20),
                        child:Text(
                  '$title',
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),),
               centerTitle: true,
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: InkWell(
                onTap: (){
                    AppRoutes.push(context, Senderfilter());
                },
                child:image? Image.asset('images/homepic.png',
                scale: 3,):Container(),
                    ),
                  )
                ],
              ),
              
              ),
    );
    }
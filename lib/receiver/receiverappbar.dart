import 'package:flutter/material.dart';
import 'package:itipsfinal/approuteclass.dart';
import 'package:itipsfinal/sender/filters.dart';
import '../constantcolors.dart';

class ReceiverAppbar extends PreferredSize {
  bool leading = true;
  ReceiverAppbar(BuildContext context, drawer, keyScafreceiver, title, image)
      : super(
          preferredSize: Size.fromHeight(0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20.0)),
                color: greycolor),
            child: AppBar(
              elevation: 10,
              backgroundColor: Colors.transparent,
              leading: drawer == true
                  ? InkWell(
                      onTap: () {
                        // keyScafreceiver.currentState.openDrawer();
                        Scaffold.of(context).openDrawer();
                      },
                      child: Image.asset(
                        'images/drawerimage.png',
                        scale: 4,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            AppRoutes.pop(context);
                          }),
                    ),
              title: Text(
                '$title',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              actions: <Widget>[
                InkWell(
                  onTap: () {
                    AppRoutes.push(context, Senderfilter());
                  },
                  child: image
                      ? Image.asset(
                          'images/homepic.png',
                          scale: 3,
                        )
                      : Container(),
                )
              ],
            ),
          ),
        );
}

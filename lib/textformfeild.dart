import 'package:flutter/material.dart';

import 'constantcolors.dart';

class Textfeildclass extends StatefulWidget {
  String labletxt;
  Icon iconn;
  TextEditingController feildcontroller;
  TextInputType keyboardType;
  bool obscuretext = false;

  Textfeildclass({
    this.labletxt,
    this.iconn,
    this.feildcontroller,
    this.keyboardType,
    this.obscuretext,
  });
  @override
  _TextfeildclassState createState() => _TextfeildclassState();
}

class _TextfeildclassState extends State<Textfeildclass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: whitecolor,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.8), blurRadius: 4.0)
          ]),
      height: MediaQuery.of(context).size.height /15.7,
      width: MediaQuery.of(context).size.width / 1.5,
      margin: EdgeInsets.only(bottom:1),
      child: TextFormField(
          obscureText: widget.obscuretext,
          keyboardType: widget.keyboardType,
          controller: widget.feildcontroller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 10, left: 20,bottom: 8),
            border: InputBorder.none,
            hintText: '${widget.labletxt}',
            hintStyle: TextStyle(
              color: Color(0xffC5C5C5),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            suffixIcon: widget.iconn,
          )),
    );
  }
}

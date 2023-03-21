
import 'package:flutter/material.dart';

Widget normaltext(String content,double fontsize){
  return Text(content,
  style: TextStyle(
    
   color: Colors.black,
   fontSize: fontsize,
   fontFamily: 'NotoSans'
  ),);
}


Widget boldtext(String content,double fontsize,Color color){
  return Text(content,
  style: TextStyle(
   color: color,
   fontSize: fontsize,
   fontWeight: FontWeight.w900,  
   fontFamily: 'NotoSans'
  ),);
}
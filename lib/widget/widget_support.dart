import 'package:flutter/material.dart';

class AppWidget{
  
  static TextStyle boldTextFieldStyle(){
    return  const TextStyle(
          color: Colors.black, 
          fontSize: 25.0, fontWeight: FontWeight.bold, 
          fontFamily: 'Cinzel');
  }

  static TextStyle headlineTextFieldStyle(){
    return  const TextStyle(
          color: Colors.black, 
          fontSize: 15.0, fontWeight: FontWeight.bold, 
          fontFamily: 'Cinzel');
}
 static TextStyle semiBoldTextFieldStyle(){
    return  const TextStyle(
          color: Colors.black, 
          fontSize: 10.0, fontWeight: FontWeight.bold, 
          fontFamily: 'Cinzel');
}
}